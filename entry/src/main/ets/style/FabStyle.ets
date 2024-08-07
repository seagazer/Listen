import { UIConfig } from '../config/UIConfig'
import { dimColor } from '../extensions/Extensions'
import { Theme } from '../theme/Theme'

export class FabStyle implements AttributeModifier<TextAttribute> {
    private theme: Theme

    constructor(theme: Theme) {
        this.theme = theme
    }

    applyNormalAttribute(instance: TextAttribute): void {
        instance.backgroundColor(this.theme.colorPrimary)
            .shadow({
                radius: UIConfig.DIMENSION_NORMAL_SHADOW,
                color: "#ccb8b8b8",
                offsetY: UIConfig.DIMENSION_OFFSET_SHADOW
            })
    }

    applyPressedAttribute(instance: TextAttribute): void {
        instance.backgroundColor(dimColor(this.theme.colorPrimary))
            .shadow({
                radius: UIConfig.DIMENSION_PRESS_SHADOW,
                color: "#ccb8b8b8",
                offsetY: UIConfig.DIMENSION_OFFSET_SHADOW
            })
    }
}