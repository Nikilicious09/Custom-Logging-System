enum LogLevel: String {
    case error
    case warning
    case info
}

func log(_ message: String, level: LogLevel = .info, file: String = #file, function: String = #function, line: Int = #line, column: Int = #column) {
    print("[\(level.rawValue)] [\(file):\(function):\(line):\(column)] \(message)")
}

func logCaller() {
    log("This is an info log.")
    log("This is a warning.", level: .warning)
    log("This is an error.", level: .error)
}

logCaller()
