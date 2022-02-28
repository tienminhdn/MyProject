//
//  FileConfig.swift
//  MyProject
//
//  Created by T.Minh on 2/28/22.
//

import Foundation

/// It will help you get some values more secrectly by environments config.
final class AppConfiguration {

    /// Get the value according to the given key in your bundle
    ///
    /// - Parameter key: The keys that you defined in .xcconfig file
    /// - Returns: The accordingly value
    static func infoForKey(_ key: String) -> String? {
        guard let configs = Bundle.main.infoDictionary?["App Configurations"] as? [String: String],
            let value = configs[key] else { return nil }
        return value.replacingOccurrences(of: "\\", with: "")
    }

    /// Get the value according to the given key in your bundle
    ///
    /// - Parameter key: The keys that you defined `AppConfigurationKeys`
    /// - Returns: The accordingly value
    static func infoForKey(_ key: AppConfigurationKeys) -> String? {
        guard let configs = Bundle.main.infoDictionary?["App Configurations"] as? [String: String],
            let value = configs[key.rawValue] else { return nil }
        return value.replacingOccurrences(of: "\\", with: "")
    }
}

/// Define some keys that using in .xcconfig file. It help you less confused and get correctly values
///
/// - displayName: The app name
/// - baseURL: The base url to request API

enum AppConfigurationKeys: String {
    // Application
    case displayName = "DISPLAY_NAME"
    case bundleIndentifier = "BUNDLE_INDENTIFIER"
    case baseURL = "BASE_URL"
}
