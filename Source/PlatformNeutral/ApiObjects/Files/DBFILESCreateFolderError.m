///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESCreateFolderError.h"
#import "DBFILESWriteError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESCreateFolderError 

@synthesize path = _path;

#pragma mark - Constructors

- (instancetype)initWithPath:(DBFILESWriteError *)path {
    self = [super init];
    if (self) {
        _tag = DBFILESCreateFolderErrorPath;
        _path = path;
    }
    return self;
}

#pragma mark - Instance field accessors

- (DBFILESWriteError *)path {
    if (![self isPath]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBFILESCreateFolderErrorPath, but was %@.", [self tagName]];
    }
    return _path;
}

#pragma mark - Tag state methods

- (BOOL)isPath {
    return _tag == DBFILESCreateFolderErrorPath;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBFILESCreateFolderErrorPath:
           return @"DBFILESCreateFolderErrorPath";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBFILESCreateFolderErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBFILESCreateFolderErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBFILESCreateFolderErrorSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBFILESCreateFolderErrorSerializer 

+ (NSDictionary *)serialize:(DBFILESCreateFolderError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isPath]) {
        jsonDict = [[DBFILESWriteErrorSerializer serialize:valueObj.path] mutableCopy];
        jsonDict[@".tag"] = @"path";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBFILESCreateFolderError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"path"]) {
        DBFILESWriteError *path = [DBFILESWriteErrorSerializer deserialize:valueDict[@"path"]];
        return [[DBFILESCreateFolderError alloc] initWithPath:path];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
