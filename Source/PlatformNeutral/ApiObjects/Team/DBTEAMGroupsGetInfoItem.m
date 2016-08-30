///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMGroupFullInfo.h"
#import "DBTEAMGroupsGetInfoItem.h"

#pragma mark - API Object

@implementation DBTEAMGroupsGetInfoItem 

@synthesize idNotFound = _idNotFound;
@synthesize groupInfo = _groupInfo;

#pragma mark - Constructors

- (instancetype)initWithIdNotFound:(NSString *)idNotFound {
    self = [super init];
    if (self) {
        _tag = DBTEAMGroupsGetInfoItemIdNotFound;
        _idNotFound = idNotFound;
    }
    return self;
}

- (instancetype)initWithGroupInfo:(DBTEAMGroupFullInfo *)groupInfo {
    self = [super init];
    if (self) {
        _tag = DBTEAMGroupsGetInfoItemGroupInfo;
        _groupInfo = groupInfo;
    }
    return self;
}

#pragma mark - Instance field accessors

- (NSString *)idNotFound {
    if (![self isIdNotFound]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBTEAMGroupsGetInfoItemIdNotFound, but was %@.", [self tagName]];
    }
    return _idNotFound;
}

- (DBTEAMGroupFullInfo *)groupInfo {
    if (![self isGroupInfo]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBTEAMGroupsGetInfoItemGroupInfo, but was %@.", [self tagName]];
    }
    return _groupInfo;
}

#pragma mark - Tag state methods

- (BOOL)isIdNotFound {
    return _tag == DBTEAMGroupsGetInfoItemIdNotFound;
}

- (BOOL)isGroupInfo {
    return _tag == DBTEAMGroupsGetInfoItemGroupInfo;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBTEAMGroupsGetInfoItemIdNotFound:
           return @"DBTEAMGroupsGetInfoItemIdNotFound";
        case DBTEAMGroupsGetInfoItemGroupInfo:
           return @"DBTEAMGroupsGetInfoItemGroupInfo";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMGroupsGetInfoItemSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMGroupsGetInfoItemSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMGroupsGetInfoItemSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMGroupsGetInfoItemSerializer 

+ (NSDictionary *)serialize:(DBTEAMGroupsGetInfoItem *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isIdNotFound]) {
        jsonDict[@"id_not_found"] = valueObj.idNotFound;
        jsonDict[@".tag"] = @"id_not_found";
    }
    else if ([valueObj isGroupInfo]) {
        jsonDict = [[DBTEAMGroupFullInfoSerializer serialize:valueObj.groupInfo] mutableCopy];
        jsonDict[@".tag"] = @"group_info";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBTEAMGroupsGetInfoItem *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"id_not_found"]) {
        NSString *idNotFound = valueDict[@"id_not_found"];
        return [[DBTEAMGroupsGetInfoItem alloc] initWithIdNotFound:idNotFound];
    }
    else if ([tag isEqualToString:@"group_info"]) {
        DBTEAMGroupFullInfo *groupInfo = [DBTEAMGroupFullInfoSerializer deserialize:valueDict];
        return [[DBTEAMGroupsGetInfoItem alloc] initWithGroupInfo:groupInfo];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
