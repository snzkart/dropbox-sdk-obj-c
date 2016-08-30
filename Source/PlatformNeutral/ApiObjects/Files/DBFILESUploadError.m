///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESUploadError.h"
#import "DBFILESUploadWriteFailed.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESUploadError 

@synthesize path = _path;

#pragma mark - Constructors

- (instancetype)initWithPath:(DBFILESUploadWriteFailed *)path {
    self = [super init];
    if (self) {
        _tag = DBFILESUploadErrorPath;
        _path = path;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self) {
        _tag = DBFILESUploadErrorOther;
    }
    return self;
}

#pragma mark - Instance field accessors

- (DBFILESUploadWriteFailed *)path {
    if (![self isPath]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBFILESUploadErrorPath, but was %@.", [self tagName]];
    }
    return _path;
}

#pragma mark - Tag state methods

- (BOOL)isPath {
    return _tag == DBFILESUploadErrorPath;
}

- (BOOL)isOther {
    return _tag == DBFILESUploadErrorOther;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBFILESUploadErrorPath:
           return @"DBFILESUploadErrorPath";
        case DBFILESUploadErrorOther:
           return @"DBFILESUploadErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBFILESUploadErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBFILESUploadErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBFILESUploadErrorSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBFILESUploadErrorSerializer 

+ (NSDictionary *)serialize:(DBFILESUploadError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isPath]) {
        jsonDict = [[DBFILESUploadWriteFailedSerializer serialize:valueObj.path] mutableCopy];
        jsonDict[@".tag"] = @"path";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBFILESUploadError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"path"]) {
        DBFILESUploadWriteFailed *path = [DBFILESUploadWriteFailedSerializer deserialize:valueDict];
        return [[DBFILESUploadError alloc] initWithPath:path];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBFILESUploadError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
