///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGGetSharedLinkFileError.h"
#import "DBSHARINGSharedLinkError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGGetSharedLinkFileError 

#pragma mark - Constructors

- (instancetype)initWithSharedLinkNotFound {
    self = [super init];
    if (self) {
        _tag = DBSHARINGGetSharedLinkFileErrorSharedLinkNotFound;
    }
    return self;
}

- (instancetype)initWithSharedLinkAccessDenied {
    self = [super init];
    if (self) {
        _tag = DBSHARINGGetSharedLinkFileErrorSharedLinkAccessDenied;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self) {
        _tag = DBSHARINGGetSharedLinkFileErrorOther;
    }
    return self;
}

- (instancetype)initWithSharedLinkIsDirectory {
    self = [super init];
    if (self) {
        _tag = DBSHARINGGetSharedLinkFileErrorSharedLinkIsDirectory;
    }
    return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isSharedLinkNotFound {
    return _tag == DBSHARINGGetSharedLinkFileErrorSharedLinkNotFound;
}

- (BOOL)isSharedLinkAccessDenied {
    return _tag == DBSHARINGGetSharedLinkFileErrorSharedLinkAccessDenied;
}

- (BOOL)isOther {
    return _tag == DBSHARINGGetSharedLinkFileErrorOther;
}

- (BOOL)isSharedLinkIsDirectory {
    return _tag == DBSHARINGGetSharedLinkFileErrorSharedLinkIsDirectory;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBSHARINGGetSharedLinkFileErrorSharedLinkNotFound:
           return @"DBSHARINGGetSharedLinkFileErrorSharedLinkNotFound";
        case DBSHARINGGetSharedLinkFileErrorSharedLinkAccessDenied:
           return @"DBSHARINGGetSharedLinkFileErrorSharedLinkAccessDenied";
        case DBSHARINGGetSharedLinkFileErrorOther:
           return @"DBSHARINGGetSharedLinkFileErrorOther";
        case DBSHARINGGetSharedLinkFileErrorSharedLinkIsDirectory:
           return @"DBSHARINGGetSharedLinkFileErrorSharedLinkIsDirectory";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGGetSharedLinkFileErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGGetSharedLinkFileErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGGetSharedLinkFileErrorSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGGetSharedLinkFileErrorSerializer 

+ (NSDictionary *)serialize:(DBSHARINGGetSharedLinkFileError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isSharedLinkNotFound]) {
        jsonDict[@".tag"] = @"shared_link_not_found";
    }
    else if ([valueObj isSharedLinkAccessDenied]) {
        jsonDict[@".tag"] = @"shared_link_access_denied";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else if ([valueObj isSharedLinkIsDirectory]) {
        jsonDict[@".tag"] = @"shared_link_is_directory";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBSHARINGGetSharedLinkFileError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"shared_link_not_found"]) {
        return [[DBSHARINGGetSharedLinkFileError alloc] initWithSharedLinkNotFound];
    }
    else if ([tag isEqualToString:@"shared_link_access_denied"]) {
        return [[DBSHARINGGetSharedLinkFileError alloc] initWithSharedLinkAccessDenied];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBSHARINGGetSharedLinkFileError alloc] initWithOther];
    }
    else if ([tag isEqualToString:@"shared_link_is_directory"]) {
        return [[DBSHARINGGetSharedLinkFileError alloc] initWithSharedLinkIsDirectory];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
