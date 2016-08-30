///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMDeviceSessionArg.h"

#pragma mark - API Object

@implementation DBTEAMDeviceSessionArg 

#pragma mark - Constructors

- (instancetype)initWithSessionId:(NSString *)sessionId teamMemberId:(NSString *)teamMemberId {

    self = [super init];
    if (self) {
        _sessionId = sessionId;
        _teamMemberId = teamMemberId;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMDeviceSessionArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMDeviceSessionArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMDeviceSessionArgSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMDeviceSessionArgSerializer 

+ (NSDictionary *)serialize:(DBTEAMDeviceSessionArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"session_id"] = valueObj.sessionId;
    jsonDict[@"team_member_id"] = valueObj.teamMemberId;

    return jsonDict;
}

+ (DBTEAMDeviceSessionArg *)deserialize:(NSDictionary *)valueDict {
    NSString *sessionId = valueDict[@"session_id"];
    NSString *teamMemberId = valueDict[@"team_member_id"];

    return [[DBTEAMDeviceSessionArg alloc] initWithSessionId:sessionId teamMemberId:teamMemberId];
}

@end
