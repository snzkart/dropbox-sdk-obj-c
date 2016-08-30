///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMGroupAccessType.h"
#import "DBTEAMGroupMemberInfo.h"
#import "DBTEAMMemberProfile.h"

#pragma mark - API Object

@implementation DBTEAMGroupMemberInfo 

#pragma mark - Constructors

- (instancetype)initWithProfile:(DBTEAMMemberProfile *)profile accessType:(DBTEAMGroupAccessType *)accessType {

    self = [super init];
    if (self) {
        _profile = profile;
        _accessType = accessType;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMGroupMemberInfoSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMGroupMemberInfoSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMGroupMemberInfoSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMGroupMemberInfoSerializer 

+ (NSDictionary *)serialize:(DBTEAMGroupMemberInfo *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"profile"] = [DBTEAMMemberProfileSerializer serialize:valueObj.profile];
    jsonDict[@"access_type"] = [DBTEAMGroupAccessTypeSerializer serialize:valueObj.accessType];

    return jsonDict;
}

+ (DBTEAMGroupMemberInfo *)deserialize:(NSDictionary *)valueDict {
    DBTEAMMemberProfile *profile = [DBTEAMMemberProfileSerializer deserialize:valueDict[@"profile"]];
    DBTEAMGroupAccessType *accessType = [DBTEAMGroupAccessTypeSerializer deserialize:valueDict[@"access_type"]];

    return [[DBTEAMGroupMemberInfo alloc] initWithProfile:profile accessType:accessType];
}

@end
