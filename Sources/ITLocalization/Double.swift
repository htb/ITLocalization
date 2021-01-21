import Foundation


extension Double
{
    public func localizedString(fractionDigits: Int? = nil, locale: Locale? = nil) -> String
    {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        if let locale = locale ?? Localization.localeOverride {
            nf.locale = locale
        }
        if let fractionDigits = fractionDigits {
            nf.minimumFractionDigits = fractionDigits
            nf.maximumFractionDigits = fractionDigits
        }
        return nf.string(from: NSNumber(value: self)) ?? self.description
    }

    public var localizedString: String { return localizedString() }

    public static func decimalSeparator(locale: Locale? = nil) -> String {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        if let locale = locale ?? Localization.localeOverride {
            nf.locale = locale
        }
        return nf.decimalSeparator ?? "."
    }

    public static var decimalSeparator: String { return decimalSeparator() }
}
