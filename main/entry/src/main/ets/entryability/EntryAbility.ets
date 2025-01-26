import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { window } from '@kit.ArkUI';
import { PageTag } from 'entry_extra/src/main/ets/constants/TagName';
import { HLog } from 'utils';

// 参考 Android 中的 Application
export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    HLog.info(PageTag.TAG_ENTRY, '%{public}s', 'Ability onCreate')
  }

  onDestroy(): void {
    HLog.info(PageTag.TAG_ENTRY, '%{public}s', 'Ability onDestroy')
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    HLog.info(PageTag.TAG_ENTRY, '%{public}s', 'Ability onWindowStageCreate')

    windowStage.loadContent('pages/root/RootPage', (err) => {
      if (err.code) {
        const errorMsg = 'Failed to load the content. Cause: %{public}s'
        HLog.error(PageTag.TAG_ENTRY, '%{public}s', errorMsg, JSON.stringify(err) ?? '')
        return;
      }
      HLog.info(PageTag.TAG_ENTRY, '%{public}s', 'Succeeded in loading the content.')
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    HLog.info(PageTag.TAG_ENTRY, '%{public}s', 'Ability onWindowStageDestroy')
  }

  onForeground(): void {
    // Ability has brought to foreground
    HLog.info(PageTag.TAG_ENTRY, '%{public}s', 'Ability onForeground')
  }

  onBackground(): void {
    // Ability has back to background
    HLog.info(PageTag.TAG_ENTRY, '%{public}s', 'Ability onBackground')
  }
}
