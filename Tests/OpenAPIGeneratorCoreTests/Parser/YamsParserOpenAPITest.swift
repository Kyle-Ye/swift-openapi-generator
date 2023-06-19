//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftOpenAPIGenerator open source project
//
// Copyright (c) 2023 Apple Inc. and the SwiftOpenAPIGenerator project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftOpenAPIGenerator project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//
import XCTest
@testable import _OpenAPIGeneratorCore

final class YamsParserOpenAPITest: Test_Core {
    func testDiscourseOpenAPI() throws {
        let parser = YamsParser()
        let url = Bundle.module.url(forResource: "openapi", withExtension: "json")!
        let input = try InMemoryInputFile(fromFileAt: url)
        let result = try parser.parseOpenAPI(input, config: .init(mode: .client), diagnostics: QuietDiagnosticCollector())
        print(result.allTags)
    }
}
