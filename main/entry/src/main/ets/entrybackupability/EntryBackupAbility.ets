import { BackupExtensionAbility, BundleVersion } from '@kit.CoreFileKit';
import { PageTag } from 'entry_extra';
import { HLog } from 'utils';

export default class EntryBackupAbility extends BackupExtensionAbility {
  async onBackup() {
    HLog.info(PageTag.TAG_ENTRY_BACKUP, 'onBackup ok')
  }

  async onRestore(bundleVersion: BundleVersion) {
    HLog.info(PageTag.TAG_ENTRY_BACKUP, 'onRestore ok %{public}s', JSON.stringify(bundleVersion))
  }
}