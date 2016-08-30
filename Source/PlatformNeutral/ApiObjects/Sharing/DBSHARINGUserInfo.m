///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGUserInfo.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGUserInfo 

#pragma mark - Constructors

- (instancetype)initWithAccountId:(NSString *)accountId sameTeam:(NSNumber *)sameTeam teamMemberId:(NSString *)teamMemberId {
    [DBStoneValidators stringValidator:@(40) maxLength:@(40) pattern:nil](accountId);

    self = [super init];
    if (self) {
        _accountId = accountId;
        _sameTeam = sameTeam;
        _teamMemberId = teamMemberId;
    }
    return self;
}

- (instancetype)initWithAccountId:(NSString *)accountId sameTeam:(NSNumber *)sameTeam {
    return [self initWithAccountId:accountId sameTeam:sameTeam teamMemberId:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGUserInfoSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGUserInfoSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGUserInfoSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGUserInfoSerializer 

+ (NSDictionary *)serialize:(DBSHARINGUserInfo *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"account_id"] = valueObj.accountId;
    jsonDict[@"same_team"] = valueObj.sameTeam;
    if (valueObj.teamMemberId) {
        jsonDict[@"team_member_id"] = valueObj.teamMemberId;
    }

    return jsonDict;
}

+ (DBSHARINGUserInfo *)deserialize:(NSDictionary *)valueDict {
    NSString *accountId = valueDict[@"account_id"];
    NSNumber *sameTeam = valueDict[@"same_team"];
    NSString *teamMemberId = valueDict[@"team_member_id"] ?: nil;

    return [[DBSHARINGUserInfo alloc] initWithAccountId:accountId sameTeam:sameTeam teamMemberId:teamMemberId];
}

@end
