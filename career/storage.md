# Private storage and recovery plan — issue #18

Status: proposed architecture and local tooling; repository visibility is unchanged; no
real-data migration, account/access change, independent backup, or public-history
cleanup has been performed. Issue #18 remains open until those steps and a real
recovery check are completed. This plan is ready for the applicant's approval.

## Decision

Make `gloghry/Resume` **private** and use it for versioned career records, contact
information, application inputs, evidence, résumé sources, and selected final PDFs.
Publish only an explicitly approved public résumé PDF to the website. A separate
career repository is unnecessary for this approach. Back up the private Resume
repo as encrypted, dated Git bundles to storage independent of GitHub and the
working computer. Keep keys and account recovery information separately, with
an offline recovery copy.

| Option | Versioning and recovery | Privacy / operational tradeoff | Decision |
| --- | --- | --- | --- |
| Ignored local directory | No remote history or device-loss recovery | Useful staging boundary, easy to forget | Temporary workspace only |
| Make Resume private | Normal clone/pull and existing Git history | GitHub and authorized accounts can access plaintext; publication requires a separate reviewed output | Primary working store |
| Separate private career repo | Normal clone/pull and Git history | Extra repository and cross-repo coordination | Alternative if Resume must remain public |
| Encrypted files in Git | Ciphertext history; restores require keys | More difficult editing/diffing; key loss prevents recovery; metadata can still leak | Use encrypted offsite backups initially, not encrypted files in the public repo |
| GitHub Actions Secrets | Credential injection into workflows; management APIs expose metadata rather than original values | Not a versioned, user-restorable document archive; workflows can expose supplied secrets | Local builds need none; website deployment may need a narrowly scoped credential |

GitHub supports repository, environment, and organization secret scopes. A
repository secret is scoped to that repo; environments add deployment boundaries;
organization policies can select repositories. These are automation controls,
not document backup. Keep original credentials in a password manager, not only
in Actions. Never provide the public website workflow a token to the private Resume repo
or its backup decryption key. See [GitHub secret usage](https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/use-secrets)
and [secret API behavior](https://docs.github.com/en/rest/actions/secrets).

## Classification and destinations

| Content | Destination / publication decision |
| --- | --- |
| Templates, build tools, nonsensitive instructions | Private Resume repo; optionally publish reviewed tooling separately |
| Approved general résumé facts | Private source; public only inside the reviewed published PDF |
| Contact details, application inputs and drafts, private confirmations | Private repo; publish only the separately reviewed deliverable |
| References, transcripts, compensation, personal identifiers | Private repo only if needed; minimize collection and access |
| Employer-confidential documents, source, logs, customer data | Employer-approved systems; do not migrate merely because the new repo is private |
| Authentication credentials and backup private keys | Password manager / protected key storage and separate offline recovery copy; never commit |

## Exposure inventory (2026-11-13)

| Surface | Observed / limitation | Proposed treatment |
| --- | --- | --- |
| Public repo visibility | GitHub API reports public | Change Resume to private after approving and preparing the publication transition |
| `resume.tex` on main and historical résumé branches | Personal contact fields and employer-specific descriptions are present | Applicant to choose public contact channel and approve generalized technical wording |
| Source history and pinned citations | Older source remains reachable; facts.md narrows use and review.md tracks uncertainty | Do not assume current-file edits erase history; decide scope before cleanup |
| Releases | API lists `latest` and `2026-01-05`, each with a `resume.pdf` asset | Review actual PDFs; replace or remove only after applicant decision; archives also expose tagged source |
| Build artifacts and logs | Workflow uploads root PDF; private application is not a workflow input | Audit historical runs separately; names alone cannot establish content or safety |
| Issues and PRs | #15–#19 and reviewed PR discussion use nonsensitive descriptions; not an exhaustive history audit | Keep private answers and evidence out of public threads; inspect historical attachments if remediation is requested |
| Forks, mirrors and downstream websites | Repo API reports zero forks and Pages disabled; external copies not inventoried | Ask applicant about website delivery; cannot retract third-party downloads |
| Ignored `private/wsu-metm/` | Application source/PDF and local evidence are present, untracked | Copy to approved private repo and verify remote clone before removing any local copy |

Remote inventory used repository and release metadata. The connector did not
support the artifact collection endpoint, so artifact contents and historical
logs have not been cleared. No exhaustive secret scan or independent employer
disclosure approval is claimed. No sensitive values are reproduced here.

## Website publication design

The public website serves an approved PDF such as `/resume.pdf`. Build into an
otherwise empty staging directory and copy only the selected PDF and intended
website files. Never publish the repository root, career records, application
folders, TeX sources, logs, or backup files. Do not select PDFs using wildcards.
Publishing must target an explicit public résumé variant; committing an application
variant must not trigger publication of that variant.

The existing `latest` release download URL will require repository access after
Resume becomes private. Update the website to serve its own PDF copy; do not
embed authentication tokens or temporary private download links in browser code.
See [release permissions](https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases).

If the website repo stays public, use a private-side publishing process that
copies only approved output into the website repo. A future automated publisher
may use a credential limited to writing the website repo, stored in the private
Resume repo's Actions Secrets. The public site must not receive private-source
read access. Review the workflow and credential scope before enabling it.

If the website repo is also private, confirm the account has a qualifying Pages
plan before changing visibility. Private-source Pages can serve a public website;
GitHub Free requires a public source repo. See [Pages requirements](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site).
This branch does not change the existing release workflow or configure Pages.

## Access and public/private boundary

- Before changing Resume visibility, inventory existing publication links and
  prepare the approved PDF for the website. Verify private visibility before
  committing real application records. Review collaborators and Actions access.
- Keep private records out of current CI inputs. Replace the public release
  delivery workflow with the reviewed PDF-only publisher as a separate rollout
  step; keep website publication manual until that workflow is approved.
- Audit installed app access separately. Grant access to the private repo only
  when necessary, with the narrowest available permissions. “Private” does not
  itself restrict an already-authorized app.
- Keep the existing class, template attribution, and local build tooling in the
  private Resume repo so a restored clone can build without fetching templates
  from another repository. Review template updates explicitly.
- Update this repo's `AGENTS.md` at migration time: read the private review
  notes, never export material to public issues or logs, never change visibility,
  and review the staged diff and final PDF before any deliberate sharing.
- A private repo with plaintext files protects against public discovery, not
  a compromised account, compromised device, or authorized host access. If those
  are unacceptable, choose client-side encrypted working records before migration.

## Proposed migration (after approval)

1. Confirm making `gloghry/Resume` private, identify the website repo and its Pages
   plan, and choose backup destinations and key custody. Confirm public contact
   policy and employer wording; app-draft consent is not blanket publication consent.
2. Prepare and inspect the explicit public PDF and a PDF-only website delivery
   change before the visibility switch. Account for the old release URL becoming
   access-controlled. Confirm the intended transition sequence with the applicant.
3. Change Resume visibility only after approval. Verify the new visibility,
   collaborators, installed apps, and workflow settings. Check the website remains
   reachable and its PDF works anonymously. Do not ingest private files beforehand.
4. Copy the reviewed local WSU source, PDF, evidence, requirements, and review
   notes into a tracked `applications/wsu-metm/` directory in the now-private repo.
   Use explicit ignore exceptions for intended records; exclude auxiliary output.
   Preserve the root public résumé variant separately from application variants.
5. Review exact staged content privately, commit, push, and independently clone
   the private repo. Compare hashes and Git revision, then rebuild the application
   and check page count/text. PDF timestamps may prevent byte-identical rebuilds.
6. Make encrypted backups, copy them to independent storage, and test restoration
   with the separately stored recovery key. Retain original ignored local files
   until both remote-clone and offline-backup recovery pass.
7. Update workspace and build guidance to the tracked private application paths.
   `private/` remains temporary scratch space. Record the backup schedule and last
   successful restore privately. Only then consider #18's storage rollout complete.

## Backup and recovery procedure

Proposed retention: back up after meaningful record changes and before each
application submission; retain dated daily snapshots for 30 days and monthly
snapshots for 12 months. Keep at least one encrypted copy on an external drive
and one in independent offsite storage. Avoid immediately syncing deletions to
every copy. Confirm the actual destinations before calling this operational.

Use an existing, protected GPG key with encryption capability. Verify its full
fingerprint and decrypt a sample before use. Store an encrypted export of the
private key and its passphrase/recovery instructions separately from the backup;
keep an offline recovery copy accessible without the GitHub account. Public-key
encryption allows routine backup without exposing a decryption passphrase.
Never place passphrases in shell arguments, Git, or logs.

The helper streams a full Git bundle into GPG so it does not write a temporary
plaintext bundle. Run it on a clean, complete local private clone after committing
intended records. Fetch needed remote branches first; it captures only locally
available refs. It does not fetch, push, change settings, or copy the result offsite.

```bash
bash backup-private.sh /path/to/Resume /path/to/backup-staging FULL_GPG_FINGERPRINT
```

Git bundles include committed objects and refs, not working files, LFS payloads,
submodule repositories, releases, issues, settings, or secrets. Store needed final
PDFs as ordinary Git files for this small repo, avoid LFS/submodules initially,
and document required account settings privately. Ignored drafts are not backups.
See [Git's bundle documentation](https://git-scm.com/docs/git-bundle) and
[GitHub's backup guidance](https://docs.github.com/en/repositories/archiving-a-github-repository/backing-up-a-repository).

Restore on a trusted machine to a new protected directory (never over a live repo):

```bash
umask 077
mkdir recovery
gpg --output recovery/records.bundle --decrypt /path/to/snapshot.bundle.gpg
git clone --mirror recovery/records.bundle recovery/records.git
git -C recovery/records.git fsck --full
git clone recovery/records.git recovery/working
```

Compare expected commit IDs and selected file hashes with the private backup
record; inspect all expected branch refs. A matching hash does not prove factual
accuracy. Check final PDF readability and rebuild using the stored class and template.
Reconnect only to a verified private remote after recovery. A bundle restore
does not restore GitHub account settings or access permissions.

Device loss: authenticate to the private repo, clone, and rebuild. GitHub/account
loss: restore the encrypted bundle using the independent key copy. Accidental
deletion/corruption: restore an older retained snapshot into a new directory;
do not overwrite or prune the last known-good copy. Test restore quarterly and
after changing keys or backup storage. Missing decryption keys mean ciphertext
cannot be recovered; password-manager access must not depend solely on GitHub.

## Public exposure remediation decision

Prepare a separate change once the applicant chooses public contact policy and
employer wording. Review a replacement public PDF before publishing it. List
affected branch tips, tags, pinned citations, release assets, artifacts and
attachments before removing anything. Rewriting history changes source links
and requires coordination; it does not retract downloads, caches or other copies.
If actual credentials are found, revoke/rotate them before history cleanup.
No public data is deleted or history rewritten by this plan.

## Rollout checklist

- [x] Compare options, propose boundaries, and document recovery/migration.
- [x] Synthetic encrypted backup restored offline on 2026-11-13: all branch/tag refs, current file bytes, and an older file version matched; encrypted output permissions were 0600. Dirty-source and inside-repo destination checks also passed.
- [ ] Applicant approves visibility transition, website delivery, publication choices, key custody and backup destinations.
- [ ] Resume private visibility and access settings verified before migration; website PDF tested anonymously.
- [ ] Real records committed remotely and restored from an independent clone.
- [ ] Encryption key independently backed up and recovery tested.
- [ ] Encrypted backups copied to independent storage with retention configured.
- [ ] Real restore drill recorded and workspace documentation updated.
- [ ] Public remediation reviewed and executed as separately approved.

The synthetic restore drill validates tooling, not the existence of an independent
backup or a usable personal recovery key. Do not close #18 based on that drill alone.
