///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMActiveWebSession.h"
#import "DBTEAMDeviceSession.h"

#pragma mark - API Object

@implementation DBTEAMActiveWebSession 

#pragma mark - Constructors

- (instancetype)initWithSessionId:(NSString *)sessionId userAgent:(NSString *)userAgent os:(NSString *)os browser:(NSString *)browser ipAddress:(NSString *)ipAddress country:(NSString *)country created:(NSDate *)created updated:(NSDate *)updated {

    self = [super initWithSessionId:sessionId ipAddress:ipAddress country:country created:created updated:updated];
    if (self) {
        _userAgent = userAgent;
        _os = os;
        _browser = browser;
    }
    return self;
}

- (instancetype)initWithSessionId:(NSString *)sessionId userAgent:(NSString *)userAgent os:(NSString *)os browser:(NSString *)browser {
    return [self initWithSessionId:sessionId userAgent:userAgent os:os browser:browser ipAddress:nil country:nil created:nil updated:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMActiveWebSessionSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMActiveWebSessionSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMActiveWebSessionSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMActiveWebSessionSerializer 

+ (NSDictionary *)serialize:(DBTEAMActiveWebSession *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"session_id"] = valueObj.sessionId;
    jsonDict[@"user_agent"] = valueObj.userAgent;
    jsonDict[@"os"] = valueObj.os;
    jsonDict[@"browser"] = valueObj.browser;
    if (valueObj.ipAddress) {
        jsonDict[@"ip_address"] = valueObj.ipAddress;
    }
    if (valueObj.country) {
        jsonDict[@"country"] = valueObj.country;
    }
    if (valueObj.created) {
        jsonDict[@"created"] = [DBNSDateSerializer serialize:valueObj.created dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }
    if (valueObj.updated) {
        jsonDict[@"updated"] = [DBNSDateSerializer serialize:valueObj.updated dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }

    return jsonDict;
}

+ (DBTEAMActiveWebSession *)deserialize:(NSDictionary *)valueDict {
    NSString *sessionId = valueDict[@"session_id"];
    NSString *userAgent = valueDict[@"user_agent"];
    NSString *os = valueDict[@"os"];
    NSString *browser = valueDict[@"browser"];
    NSString *ipAddress = valueDict[@"ip_address"] ?: nil;
    NSString *country = valueDict[@"country"] ?: nil;
    NSDate *created = valueDict[@"created"] ? [DBNSDateSerializer deserialize:valueDict[@"created"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;
    NSDate *updated = valueDict[@"updated"] ? [DBNSDateSerializer deserialize:valueDict[@"updated"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;

    return [[DBTEAMActiveWebSession alloc] initWithSessionId:sessionId userAgent:userAgent os:os browser:browser ipAddress:ipAddress country:country created:created updated:updated];
}

@end
