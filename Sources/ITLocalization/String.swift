extension String
{
    public var localized: String
    {
        let bundle = Localization.overrideBundle ?? Bundle.main
        return bundle.localizedString(forKey: self, value: nil, table: nil)
    }

    func localized(args: CVarArg...) -> String
    {
        return String(format: localized, arguments: args)
    }
}
