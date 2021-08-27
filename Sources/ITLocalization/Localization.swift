import Foundation


public enum Localization  // simply used as namespace
{
    /// The language to default to if a localization key is not found for the language of the current locale.
    public static var fallbackLanguageCode: String? = nil
    
    public static var localeOverride: Locale? = nil
    {
        didSet {
            if
                let locale = localeOverride,
                let languageCode = locale.languageCode,
                let path = Bundle.main.path(forResource: languageCode, ofType: "lproj"),
                let bundle = Bundle(path: path)
            {
                overrideBundle = bundle
            }
            else { overrideBundle = nil }
        }
    }

    internal static private(set) var overrideBundle: Bundle? = nil
}
