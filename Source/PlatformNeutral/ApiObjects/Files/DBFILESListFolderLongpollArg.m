///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESListFolderLongpollArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESListFolderLongpollArg 

#pragma mark - Constructors

- (instancetype)initWithCursor:(NSString *)cursor timeout:(NSNumber *)timeout {
    [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:nil](cursor);
    [DBStoneValidators numericValidator:@(30) maxValue:@(480)](timeout ?: @(30));

    self = [super init];
    if (self) {
        _cursor = cursor;
        _timeout = timeout ?: @(30);
    }
    return self;
}

- (instancetype)initWithCursor:(NSString *)cursor {
    return [self initWithCursor:cursor timeout:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBFILESListFolderLongpollArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBFILESListFolderLongpollArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBFILESListFolderLongpollArgSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBFILESListFolderLongpollArgSerializer 

+ (NSDictionary *)serialize:(DBFILESListFolderLongpollArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"cursor"] = valueObj.cursor;
    jsonDict[@"timeout"] = valueObj.timeout;

    return jsonDict;
}

+ (DBFILESListFolderLongpollArg *)deserialize:(NSDictionary *)valueDict {
    NSString *cursor = valueDict[@"cursor"];
    NSNumber *timeout = valueDict[@"timeout"];

    return [[DBFILESListFolderLongpollArg alloc] initWithCursor:cursor timeout:timeout];
}

@end
