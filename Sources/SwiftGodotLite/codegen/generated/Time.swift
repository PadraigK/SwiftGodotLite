// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A singleton for working with time data.
/// 
/// The Time singleton allows converting time between various formats and also getting time information from the system.
/// 
/// This class conforms with as many of the ISO 8601 standards as possible. All dates follow the Proleptic Gregorian calendar. As such, the day before `1582-10-15` is `1582-10-14`, not `1582-10-04`. The year before 1 AD (aka 1 BC) is number `0`, with the year before that (2 BC) being `-1`, etc.
/// 
/// Conversion methods assume "the same timezone", and do not handle timezone conversions or DST automatically. Leap seconds are also not handled, they must be done manually if desired. Suffixes such as "Z" are not handled, you need to strip them away manually.
/// 
/// When getting time information from the system, the time can either be in the local timezone or UTC depending on the `utc` parameter. However, the ``getUnixTimeFromSystem()`` method always returns the time in UTC.
/// 
/// **Important:** The `_from_system` methods use the system clock that the user can manually set. **Never use** this method for precise time calculation since its results are subject to automatic adjustments by the user or the operating system. **Always use** ``getTicksUsec()`` or ``getTicksMsec()`` for precise time calculation instead, since they are guaranteed to be monotonic (i.e. never decrease).
/// 
open class Time: Object {
    /// The shared instance of this class
    public static var shared: Time = {
        return withUnsafePointer (to: &Time.godotClassName.content) { ptr in
            Time (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "Time" }
    public enum Month: Int64 {
        /// The month of January, represented numerically as `01`.
        case january = 1 // MONTH_JANUARY
        /// The month of February, represented numerically as `02`.
        case february = 2 // MONTH_FEBRUARY
        /// The month of March, represented numerically as `03`.
        case march = 3 // MONTH_MARCH
        /// The month of April, represented numerically as `04`.
        case april = 4 // MONTH_APRIL
        /// The month of May, represented numerically as `05`.
        case may = 5 // MONTH_MAY
        /// The month of June, represented numerically as `06`.
        case june = 6 // MONTH_JUNE
        /// The month of July, represented numerically as `07`.
        case july = 7 // MONTH_JULY
        /// The month of August, represented numerically as `08`.
        case august = 8 // MONTH_AUGUST
        /// The month of September, represented numerically as `09`.
        case september = 9 // MONTH_SEPTEMBER
        /// The month of October, represented numerically as `10`.
        case october = 10 // MONTH_OCTOBER
        /// The month of November, represented numerically as `11`.
        case november = 11 // MONTH_NOVEMBER
        /// The month of December, represented numerically as `12`.
        case december = 12 // MONTH_DECEMBER
    }
    
    public enum Weekday: Int64 {
        /// The day of the week Sunday, represented numerically as `0`.
        case sunday = 0 // WEEKDAY_SUNDAY
        /// The day of the week Monday, represented numerically as `1`.
        case monday = 1 // WEEKDAY_MONDAY
        /// The day of the week Tuesday, represented numerically as `2`.
        case tuesday = 2 // WEEKDAY_TUESDAY
        /// The day of the week Wednesday, represented numerically as `3`.
        case wednesday = 3 // WEEKDAY_WEDNESDAY
        /// The day of the week Thursday, represented numerically as `4`.
        case thursday = 4 // WEEKDAY_THURSDAY
        /// The day of the week Friday, represented numerically as `5`.
        case friday = 5 // WEEKDAY_FRIDAY
        /// The day of the week Saturday, represented numerically as `6`.
        case saturday = 6 // WEEKDAY_SATURDAY
    }
    
    /* Methods */
    fileprivate static var method_get_datetime_dict_from_unix_time: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_datetime_dict_from_unix_time")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3485342025)!
            }
            
        }
        
    }()
    
    /// Converts the given Unix timestamp to a dictionary of keys: `year`, `month`, `day`, `weekday`, `hour`, `minute`, and `second`.
    /// 
    /// The returned Dictionary's values will be the same as the ``getDatetimeDictFromSystem(utc:)`` if the Unix timestamp is the current time, with the exception of Daylight Savings Time as it cannot be determined from the epoch.
    /// 
    public static func getDatetimeDictFromUnixTime (unixTimeVal: Int)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if false
        
        var copy_unix_time_val = unixTimeVal
        
        gi.object_method_bind_ptrcall_v (Time.method_get_datetime_dict_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_unix_time_val)
        return _result
        #else
        
        var copy_unix_time_val = unixTimeVal
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_unix_time_val) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_datetime_dict_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_date_dict_from_unix_time: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_date_dict_from_unix_time")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3485342025)!
            }
            
        }
        
    }()
    
    /// Converts the given Unix timestamp to a dictionary of keys: `year`, `month`, `day`, and `weekday`.
    public static func getDateDictFromUnixTime (unixTimeVal: Int)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if false
        
        var copy_unix_time_val = unixTimeVal
        
        gi.object_method_bind_ptrcall_v (Time.method_get_date_dict_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_unix_time_val)
        return _result
        #else
        
        var copy_unix_time_val = unixTimeVal
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_unix_time_val) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_date_dict_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_time_dict_from_unix_time: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_time_dict_from_unix_time")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3485342025)!
            }
            
        }
        
    }()
    
    /// Converts the given time to a dictionary of keys: `hour`, `minute`, and `second`.
    public static func getTimeDictFromUnixTime (unixTimeVal: Int)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if false
        
        var copy_unix_time_val = unixTimeVal
        
        gi.object_method_bind_ptrcall_v (Time.method_get_time_dict_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_unix_time_val)
        return _result
        #else
        
        var copy_unix_time_val = unixTimeVal
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_unix_time_val) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_time_dict_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_datetime_string_from_unix_time: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_datetime_string_from_unix_time")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2311239925)!
            }
            
        }
        
    }()
    
    /// Converts the given Unix timestamp to an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
    /// 
    /// If `useSpace` is `true`, the date and time bits are separated by an empty space character instead of the letter T.
    /// 
    public static func getDatetimeStringFromUnixTime (unixTimeVal: Int, useSpace: Bool = false)-> String {
        let _result = GString ()
        #if false
        
        var copy_unix_time_val = unixTimeVal
        var copy_use_space = useSpace
        
        gi.object_method_bind_ptrcall_v (Time.method_get_datetime_string_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_unix_time_val, &copy_use_space)
        return _result.description
        #else
        
        var copy_unix_time_val = unixTimeVal
        var copy_use_space = useSpace
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_unix_time_val) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_use_space) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Time.method_get_datetime_string_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
                return _result.description
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_date_string_from_unix_time: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_date_string_from_unix_time")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Converts the given Unix timestamp to an ISO 8601 date string (YYYY-MM-DD).
    public static func getDateStringFromUnixTime (unixTimeVal: Int)-> String {
        let _result = GString ()
        #if false
        
        var copy_unix_time_val = unixTimeVal
        
        gi.object_method_bind_ptrcall_v (Time.method_get_date_string_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_unix_time_val)
        return _result.description
        #else
        
        var copy_unix_time_val = unixTimeVal
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_unix_time_val) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_date_string_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_time_string_from_unix_time: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_time_string_from_unix_time")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Converts the given Unix timestamp to an ISO 8601 time string (HH:MM:SS).
    public static func getTimeStringFromUnixTime (unixTimeVal: Int)-> String {
        let _result = GString ()
        #if false
        
        var copy_unix_time_val = unixTimeVal
        
        gi.object_method_bind_ptrcall_v (Time.method_get_time_string_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_unix_time_val)
        return _result.description
        #else
        
        var copy_unix_time_val = unixTimeVal
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_unix_time_val) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_time_string_from_unix_time, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_datetime_dict_from_datetime_string: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_datetime_dict_from_datetime_string")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3253569256)!
            }
            
        }
        
    }()
    
    /// Converts the given ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS) to a dictionary of keys: `year`, `month`, `day`, [code skip-lint]weekday`, `hour`, `minute`, and `second`.
    /// 
    /// If `weekday` is `false`, then the [code skip-lint]weekday` entry is excluded (the calculation is relatively expensive).
    /// 
    /// > Note: Any decimal fraction in the time string will be ignored silently.
    /// 
    public static func getDatetimeDictFromDatetimeString (datetime: String, weekday: Bool)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if false
        
        let gstr_datetime = GString (datetime)
        var copy_weekday = weekday
        
        gi.object_method_bind_ptrcall_v (Time.method_get_datetime_dict_from_datetime_string, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &gstr_datetime.content, &copy_weekday)
        return _result
        #else
        
        let gstr_datetime = GString (datetime)
        var copy_weekday = weekday
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_datetime.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_weekday) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Time.method_get_datetime_dict_from_datetime_string, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_datetime_string_from_datetime_dict: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_datetime_string_from_datetime_dict")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1898123706)!
            }
            
        }
        
    }()
    
    /// Converts the given dictionary of keys to an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
    /// 
    /// The given dictionary can be populated with the following keys: `year`, `month`, `day`, `hour`, `minute`, and `second`. Any other entries (including `dst`) are ignored.
    /// 
    /// If the dictionary is empty, `0` is returned. If some keys are omitted, they default to the equivalent values for the Unix epoch timestamp 0 (1970-01-01 at 00:00:00).
    /// 
    /// If `useSpace` is `true`, the date and time bits are separated by an empty space character instead of the letter T.
    /// 
    public static func getDatetimeStringFromDatetimeDict (datetime: GDictionary, useSpace: Bool)-> String {
        let _result = GString ()
        #if false
        
        var copy_use_space = useSpace
        
        gi.object_method_bind_ptrcall_v (Time.method_get_datetime_string_from_datetime_dict, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &datetime.content, &copy_use_space)
        return _result.description
        #else
        
        var copy_use_space = useSpace
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &datetime.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_use_space) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Time.method_get_datetime_string_from_datetime_dict, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
                return _result.description
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_unix_time_from_datetime_dict: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_unix_time_from_datetime_dict")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3021115443)!
            }
            
        }
        
    }()
    
    /// Converts a dictionary of time values to a Unix timestamp.
    /// 
    /// The given dictionary can be populated with the following keys: `year`, `month`, `day`, `hour`, `minute`, and `second`. Any other entries (including `dst`) are ignored.
    /// 
    /// If the dictionary is empty, `0` is returned. If some keys are omitted, they default to the equivalent values for the Unix epoch timestamp 0 (1970-01-01 at 00:00:00).
    /// 
    /// You can pass the output from ``getDatetimeDictFromUnixTime(unixTimeVal:)`` directly into this function and get the same as what was put in.
    /// 
    /// > Note: Unix timestamps are often in UTC. This method does not do any timezone conversion, so the timestamp will be in the same timezone as the given datetime dictionary.
    /// 
    public static func getUnixTimeFromDatetimeDict (datetime: GDictionary)-> Int {
        var _result: Int = 0
        #if false
        
        
        gi.object_method_bind_ptrcall_v (Time.method_get_unix_time_from_datetime_dict, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &datetime.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &datetime.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_unix_time_from_datetime_dict, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_unix_time_from_datetime_string: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_unix_time_from_datetime_string")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Converts the given ISO 8601 date and/or time string to a Unix timestamp. The string can contain a date only, a time only, or both.
    /// 
    /// > Note: Unix timestamps are often in UTC. This method does not do any timezone conversion, so the timestamp will be in the same timezone as the given datetime string.
    /// 
    /// > Note: Any decimal fraction in the time string will be ignored silently.
    /// 
    public static func getUnixTimeFromDatetimeString (datetime: String)-> Int {
        var _result: Int = 0
        #if false
        
        let gstr_datetime = GString (datetime)
        
        gi.object_method_bind_ptrcall_v (Time.method_get_unix_time_from_datetime_string, UnsafeMutableRawPointer (mutating: shared.handle), &_result, &gstr_datetime.content)
        return _result
        #else
        
        let gstr_datetime = GString (datetime)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_datetime.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_unix_time_from_datetime_string, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_offset_string_from_offset_minutes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_offset_string_from_offset_minutes")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Converts the given timezone offset in minutes to a timezone offset string. For example, -480 returns "-08:00", 345 returns "+05:45", and 0 returns "+00:00".
    public static func getOffsetStringFromOffsetMinutes (_ offsetMinutes: Int)-> String {
        let _result = GString ()
        #if false
        
        var copy_offset_minutes = offsetMinutes
        
        gi.object_method_bind_ptrcall_v (Time.method_get_offset_string_from_offset_minutes, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_offset_minutes)
        return _result.description
        #else
        
        var copy_offset_minutes = offsetMinutes
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_offset_minutes) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_offset_string_from_offset_minutes, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_datetime_dict_from_system: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_datetime_dict_from_system")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 205769976)!
            }
            
        }
        
    }()
    
    /// Returns the current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, `hour`, `minute`, `second`, and `dst` (Daylight Savings Time).
    public static func getDatetimeDictFromSystem (utc: Bool = false)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if false
        
        var copy_utc = utc
        
        gi.object_method_bind_ptrcall_v (Time.method_get_datetime_dict_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_utc)
        return _result
        #else
        
        var copy_utc = utc
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_utc) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_datetime_dict_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_date_dict_from_system: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_date_dict_from_system")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 205769976)!
            }
            
        }
        
    }()
    
    /// Returns the current date as a dictionary of keys: `year`, `month`, `day`, and `weekday`.
    /// 
    /// The returned values are in the system's local time when `utc` is `false`, otherwise they are in UTC.
    /// 
    public static func getDateDictFromSystem (utc: Bool = false)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if false
        
        var copy_utc = utc
        
        gi.object_method_bind_ptrcall_v (Time.method_get_date_dict_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_utc)
        return _result
        #else
        
        var copy_utc = utc
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_utc) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_date_dict_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_time_dict_from_system: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_time_dict_from_system")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 205769976)!
            }
            
        }
        
    }()
    
    /// Returns the current time as a dictionary of keys: `hour`, `minute`, and `second`.
    /// 
    /// The returned values are in the system's local time when `utc` is `false`, otherwise they are in UTC.
    /// 
    public static func getTimeDictFromSystem (utc: Bool = false)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if false
        
        var copy_utc = utc
        
        gi.object_method_bind_ptrcall_v (Time.method_get_time_dict_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_utc)
        return _result
        #else
        
        var copy_utc = utc
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_utc) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_time_dict_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_datetime_string_from_system: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_datetime_string_from_system")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1136425492)!
            }
            
        }
        
    }()
    
    /// Returns the current date and time as an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
    /// 
    /// The returned values are in the system's local time when `utc` is `false`, otherwise they are in UTC.
    /// 
    /// If `useSpace` is `true`, the date and time bits are separated by an empty space character instead of the letter T.
    /// 
    public static func getDatetimeStringFromSystem (utc: Bool = false, useSpace: Bool = false)-> String {
        let _result = GString ()
        #if false
        
        var copy_utc = utc
        var copy_use_space = useSpace
        
        gi.object_method_bind_ptrcall_v (Time.method_get_datetime_string_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_utc, &copy_use_space)
        return _result.description
        #else
        
        var copy_utc = utc
        var copy_use_space = useSpace
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_utc) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_use_space) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Time.method_get_datetime_string_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
                return _result.description
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_date_string_from_system: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_date_string_from_system")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1162154673)!
            }
            
        }
        
    }()
    
    /// Returns the current date as an ISO 8601 date string (YYYY-MM-DD).
    /// 
    /// The returned values are in the system's local time when `utc` is `false`, otherwise they are in UTC.
    /// 
    public static func getDateStringFromSystem (utc: Bool = false)-> String {
        let _result = GString ()
        #if false
        
        var copy_utc = utc
        
        gi.object_method_bind_ptrcall_v (Time.method_get_date_string_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_utc)
        return _result.description
        #else
        
        var copy_utc = utc
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_utc) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_date_string_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_time_string_from_system: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_time_string_from_system")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1162154673)!
            }
            
        }
        
    }()
    
    /// Returns the current time as an ISO 8601 time string (HH:MM:SS).
    /// 
    /// The returned values are in the system's local time when `utc` is `false`, otherwise they are in UTC.
    /// 
    public static func getTimeStringFromSystem (utc: Bool = false)-> String {
        let _result = GString ()
        #if false
        
        var copy_utc = utc
        
        gi.object_method_bind_ptrcall_v (Time.method_get_time_string_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_result.content, &copy_utc)
        return _result.description
        #else
        
        var copy_utc = utc
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_utc) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Time.method_get_time_string_from_system, UnsafeMutableRawPointer (mutating: shared.handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_time_zone_from_system: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_time_zone_from_system")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Returns the current time zone as a dictionary of keys: `bias` and `name`. 
    /// 
    /// - `bias` is the offset from UTC in minutes, since not all time zones are multiples of an hour from UTC.
    /// 
    /// - `name` is the localized name of the time zone, according to the OS locale settings of the current user.
    /// 
    public static func getTimeZoneFromSystem ()-> GDictionary {
        let _result: GDictionary = GDictionary ()
        gi.object_method_bind_ptrcall (Time.method_get_time_zone_from_system, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_unix_time_from_system: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_unix_time_from_system")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the current Unix timestamp in seconds based on the system time in UTC. This method is implemented by the operating system and always returns the time in UTC.
    /// 
    /// > Note: Unlike other methods that use integer timestamps, this method returns the timestamp as a float for sub-second precision.
    /// 
    public static func getUnixTimeFromSystem ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (Time.method_get_unix_time_from_system, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_ticks_msec: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_ticks_msec")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the amount of time passed in milliseconds since the engine started.
    /// 
    /// Will always be positive or 0 and uses a 64-bit value (it will wrap after roughly 500 million years).
    /// 
    public static func getTicksMsec ()-> UInt {
        var _result: UInt = 0
        gi.object_method_bind_ptrcall (Time.method_get_ticks_msec, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_ticks_usec: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_ticks_usec")
        return withUnsafePointer (to: &Time.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the amount of time passed in microseconds since the engine started.
    /// 
    /// Will always be positive or 0 and uses a 64-bit value (it will wrap after roughly half a million years).
    /// 
    public static func getTicksUsec ()-> UInt {
        var _result: UInt = 0
        gi.object_method_bind_ptrcall (Time.method_get_ticks_usec, UnsafeMutableRawPointer (mutating: shared.handle), nil, &_result)
        return _result
    }
    
}

