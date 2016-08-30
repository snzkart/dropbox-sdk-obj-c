///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMPOLICIESTeamMemberPolicies.h"
#import "DBTEAMTeamGetInfoResult.h"

#pragma mark - API Object

@implementation DBTEAMTeamGetInfoResult 

#pragma mark - Constructors

- (instancetype)initWithName:(NSString *)name teamId:(NSString *)teamId numLicensedUsers:(NSNumber *)numLicensedUsers numProvisionedUsers:(NSNumber *)numProvisionedUsers policies:(DBTEAMPOLICIESTeamMemberPolicies *)policies {

    self = [super init];
    if (self) {
        _name = name;
        _teamId = teamId;
        _numLicensedUsers = numLicensedUsers;
        _numProvisionedUsers = numProvisionedUsers;
        _policies = policies;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMTeamGetInfoResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMTeamGetInfoResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMTeamGetInfoResultSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMTeamGetInfoResultSerializer 

+ (NSDictionary *)serialize:(DBTEAMTeamGetInfoResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"name"] = valueObj.name;
    jsonDict[@"team_id"] = valueObj.teamId;
    jsonDict[@"num_licensed_users"] = valueObj.numLicensedUsers;
    jsonDict[@"num_provisioned_users"] = valueObj.numProvisionedUsers;
    jsonDict[@"policies"] = [DBTEAMPOLICIESTeamMemberPoliciesSerializer serialize:valueObj.policies];

    return jsonDict;
}

+ (DBTEAMTeamGetInfoResult *)deserialize:(NSDictionary *)valueDict {
    NSString *name = valueDict[@"name"];
    NSString *teamId = valueDict[@"team_id"];
    NSNumber *numLicensedUsers = valueDict[@"num_licensed_users"];
    NSNumber *numProvisionedUsers = valueDict[@"num_provisioned_users"];
    DBTEAMPOLICIESTeamMemberPolicies *policies = [DBTEAMPOLICIESTeamMemberPoliciesSerializer deserialize:valueDict[@"policies"]];

    return [[DBTEAMTeamGetInfoResult alloc] initWithName:name teamId:teamId numLicensedUsers:numLicensedUsers numProvisionedUsers:numProvisionedUsers policies:policies];
}

@end
