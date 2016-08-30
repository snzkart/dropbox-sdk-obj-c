///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGSharedLinkError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGSharedLinkError 

#pragma mark - Constructors

- (instancetype)initWithSharedLinkNotFound {
    self = [super init];
    if (self) {
        _tag = DBSHARINGSharedLinkErrorSharedLinkNotFound;
    }
    return self;
}

- (instancetype)initWithSharedLinkAccessDenied {
    self = [super init];
    if (self) {
        _tag = DBSHARINGSharedLinkErrorSharedLinkAccessDenied;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self) {
        _tag = DBSHARINGSharedLinkErrorOther;
    }
    return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isSharedLinkNotFound {
    return _tag == DBSHARINGSharedLinkErrorSharedLinkNotFound;
}

- (BOOL)isSharedLinkAccessDenied {
    return _tag == DBSHARINGSharedLinkErrorSharedLinkAccessDenied;
}

- (BOOL)isOther {
    return _tag == DBSHARINGSharedLinkErrorOther;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBSHARINGSharedLinkErrorSharedLinkNotFound:
           return @"DBSHARINGSharedLinkErrorSharedLinkNotFound";
        case DBSHARINGSharedLinkErrorSharedLinkAccessDenied:
           return @"DBSHARINGSharedLinkErrorSharedLinkAccessDenied";
        case DBSHARINGSharedLinkErrorOther:
           return @"DBSHARINGSharedLinkErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGSharedLinkErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGSharedLinkErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGSharedLinkErrorSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGSharedLinkErrorSerializer 

+ (NSDictionary *)serialize:(DBSHARINGSharedLinkError *)valueObj {
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
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBSHARINGSharedLinkError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"shared_link_not_found"]) {
        return [[DBSHARINGSharedLinkError alloc] initWithSharedLinkNotFound];
    }
    else if ([tag isEqualToString:@"shared_link_access_denied"]) {
        return [[DBSHARINGSharedLinkError alloc] initWithSharedLinkAccessDenied];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBSHARINGSharedLinkError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
