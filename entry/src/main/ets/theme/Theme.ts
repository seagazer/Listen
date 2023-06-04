export class Theme {
    colorPrimary: string
    colorSecondary: string
    colorAction: string

    constructor(colorPrimary: string, colorSecondary: string, colorAction: string = "#80b7b7b7") {
        this.colorPrimary = colorPrimary
        this.colorSecondary = colorSecondary
        this.colorAction = colorAction
    }
}

export const DEFAULT_THEME = new Theme("#ff000000", "#ff9b9b9b")