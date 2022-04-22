import Foundation


extension String
{
    public var localized: String
    {
        var fallback: String? = nil
        if
            let fallbackLanguageCode = Localization.fallbackLanguageCode,
            let path = Bundle.main.path(forResource: fallbackLanguageCode, ofType: "lproj"),
            let bundle = Bundle(path: path) {
            fallback = bundle.localizedString(forKey: self, value: nil, table: nil)
        }

        let bundle = Localization.overrideBundle ?? Bundle.main
        var replacement = bundle.localizedString(forKey: self, value: fallback, table: nil)
        
        if let fallback = fallback, replacement == self {
            replacement = fallback
        }
        return replacement
    }

    func localized(args: CVarArg...) -> String
    {
        return String(format: localized, arguments: args)
    }
}
