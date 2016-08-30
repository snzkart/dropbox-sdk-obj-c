///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESListFolderGetLatestCursorResult.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESListFolderGetLatestCursorResult 

#pragma mark - Constructors

- (instancetype)initWithCursor:(NSString *)cursor {
    [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:nil](cursor);

    self = [super init];
    if (self) {
        _cursor = cursor;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBFILESListFolderGetLatestCursorResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBFILESListFolderGetLatestCursorResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBFILESListFolderGetLatestCursorResultSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBFILESListFolderGetLatestCursorResultSerializer 

+ (NSDictionary *)serialize:(DBFILESListFolderGetLatestCursorResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"cursor"] = valueObj.cursor;

    return jsonDict;
}

+ (DBFILESListFolderGetLatestCursorResult *)deserialize:(NSDictionary *)valueDict {
    NSString *cursor = valueDict[@"cursor"];

    return [[DBFILESListFolderGetLatestCursorResult alloc] initWithCursor:cursor];
}

@end
