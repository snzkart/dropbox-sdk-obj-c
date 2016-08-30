///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMPOLICIESEmmState.h"
#import "DBTEAMPOLICIESTeamMemberPolicies.h"
#import "DBTEAMPOLICIESTeamSharingPolicies.h"

#pragma mark - API Object

@implementation DBTEAMPOLICIESTeamMemberPolicies 

#pragma mark - Constructors

- (instancetype)initWithSharing:(DBTEAMPOLICIESTeamSharingPolicies *)sharing emmState:(DBTEAMPOLICIESEmmState *)emmState {

    self = [super init];
    if (self) {
        _sharing = sharing;
        _emmState = emmState;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMPOLICIESTeamMemberPoliciesSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMPOLICIESTeamMemberPoliciesSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMPOLICIESTeamMemberPoliciesSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMPOLICIESTeamMemberPoliciesSerializer 

+ (NSDictionary *)serialize:(DBTEAMPOLICIESTeamMemberPolicies *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"sharing"] = [DBTEAMPOLICIESTeamSharingPoliciesSerializer serialize:valueObj.sharing];
    jsonDict[@"emm_state"] = [DBTEAMPOLICIESEmmStateSerializer serialize:valueObj.emmState];

    return jsonDict;
}

+ (DBTEAMPOLICIESTeamMemberPolicies *)deserialize:(NSDictionary *)valueDict {
    DBTEAMPOLICIESTeamSharingPolicies *sharing = [DBTEAMPOLICIESTeamSharingPoliciesSerializer deserialize:valueDict[@"sharing"]];
    DBTEAMPOLICIESEmmState *emmState = [DBTEAMPOLICIESEmmStateSerializer deserialize:valueDict[@"emm_state"]];

    return [[DBTEAMPOLICIESTeamMemberPolicies alloc] initWithSharing:sharing emmState:emmState];
}

@end
