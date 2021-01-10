import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ITLocalizationTests.allTests),
    ]
}
#endif
