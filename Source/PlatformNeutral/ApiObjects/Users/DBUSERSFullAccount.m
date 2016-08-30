///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBUSERSAccount.h"
#import "DBUSERSAccountType.h"
#import "DBUSERSFullAccount.h"
#import "DBUSERSFullTeam.h"
#import "DBUSERSName.h"

#pragma mark - API Object

@implementation DBUSERSFullAccount 

#pragma mark - Constructors

- (instancetype)initWithAccountId:(NSString *)accountId name:(DBUSERSName *)name email:(NSString *)email emailVerified:(NSNumber *)emailVerified disabled:(NSNumber *)disabled locale:(NSString *)locale referralLink:(NSString *)referralLink isPaired:(NSNumber *)isPaired accountType:(DBUSERSAccountType *)accountType profilePhotoUrl:(NSString *)profilePhotoUrl country:(NSString *)country team:(DBUSERSFullTeam *)team teamMemberId:(NSString *)teamMemberId {
    [DBStoneValidators stringValidator:@(40) maxLength:@(40) pattern:nil](accountId);
    [DBStoneValidators stringValidator:@(2) maxLength:nil pattern:nil](locale);
    [DBStoneValidators nullableValidator:[DBStoneValidators stringValidator:@(2) maxLength:@(2) pattern:nil]](country);

    self = [super initWithAccountId:accountId name:name email:email emailVerified:emailVerified disabled:disabled profilePhotoUrl:profilePhotoUrl];
    if (self) {
        _country = country;
        _locale = locale;
        _referralLink = referralLink;
        _team = team;
        _teamMemberId = teamMemberId;
        _isPaired = isPaired;
        _accountType = accountType;
    }
    return self;
}

- (instancetype)initWithAccountId:(NSString *)accountId name:(DBUSERSName *)name email:(NSString *)email emailVerified:(NSNumber *)emailVerified disabled:(NSNumber *)disabled locale:(NSString *)locale referralLink:(NSString *)referralLink isPaired:(NSNumber *)isPaired accountType:(DBUSERSAccountType *)accountType {
    return [self initWithAccountId:accountId name:name email:email emailVerified:emailVerified disabled:disabled locale:locale referralLink:referralLink isPaired:isPaired accountType:accountType profilePhotoUrl:nil country:nil team:nil teamMemberId:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBUSERSFullAccountSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBUSERSFullAccountSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBUSERSFullAccountSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBUSERSFullAccountSerializer 

+ (NSDictionary *)serialize:(DBUSERSFullAccount *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"account_id"] = valueObj.accountId;
    jsonDict[@"name"] = [DBUSERSNameSerializer serialize:valueObj.name];
    jsonDict[@"email"] = valueObj.email;
    jsonDict[@"email_verified"] = valueObj.emailVerified;
    jsonDict[@"disabled"] = valueObj.disabled;
    jsonDict[@"locale"] = valueObj.locale;
    jsonDict[@"referral_link"] = valueObj.referralLink;
    jsonDict[@"is_paired"] = valueObj.isPaired;
    jsonDict[@"account_type"] = [DBUSERSAccountTypeSerializer serialize:valueObj.accountType];
    if (valueObj.profilePhotoUrl) {
        jsonDict[@"profile_photo_url"] = valueObj.profilePhotoUrl;
    }
    if (valueObj.country) {
        jsonDict[@"country"] = valueObj.country;
    }
    if (valueObj.team) {
        jsonDict[@"team"] = [DBUSERSFullTeamSerializer serialize:valueObj.team];
    }
    if (valueObj.teamMemberId) {
        jsonDict[@"team_member_id"] = valueObj.teamMemberId;
    }

    return jsonDict;
}

+ (DBUSERSFullAccount *)deserialize:(NSDictionary *)valueDict {
    NSString *accountId = valueDict[@"account_id"];
    DBUSERSName *name = [DBUSERSNameSerializer deserialize:valueDict[@"name"]];
    NSString *email = valueDict[@"email"];
    NSNumber *emailVerified = valueDict[@"email_verified"];
    NSNumber *disabled = valueDict[@"disabled"];
    NSString *locale = valueDict[@"locale"];
    NSString *referralLink = valueDict[@"referral_link"];
    NSNumber *isPaired = valueDict[@"is_paired"];
    DBUSERSAccountType *accountType = [DBUSERSAccountTypeSerializer deserialize:valueDict[@"account_type"]];
    NSString *profilePhotoUrl = valueDict[@"profile_photo_url"] ?: nil;
    NSString *country = valueDict[@"country"] ?: nil;
    DBUSERSFullTeam *team = valueDict[@"team"] ? [DBUSERSFullTeamSerializer deserialize:valueDict[@"team"]] : nil;
    NSString *teamMemberId = valueDict[@"team_member_id"] ?: nil;

    return [[DBUSERSFullAccount alloc] initWithAccountId:accountId name:name email:email emailVerified:emailVerified disabled:disabled locale:locale referralLink:referralLink isPaired:isPaired accountType:accountType profilePhotoUrl:profilePhotoUrl country:country team:team teamMemberId:teamMemberId];
}

@end
