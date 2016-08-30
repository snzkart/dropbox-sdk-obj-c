///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGFolderAction.h"
#import "DBSHARINGFolderPermission.h"
#import "DBSHARINGPermissionDeniedReason.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGFolderPermission 

#pragma mark - Constructors

- (instancetype)initWithAction:(DBSHARINGFolderAction *)action allow:(NSNumber *)allow reason:(DBSHARINGPermissionDeniedReason *)reason {

    self = [super init];
    if (self) {
        _action = action;
        _allow = allow;
        _reason = reason;
    }
    return self;
}

- (instancetype)initWithAction:(DBSHARINGFolderAction *)action allow:(NSNumber *)allow {
    return [self initWithAction:action allow:allow reason:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGFolderPermissionSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGFolderPermissionSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGFolderPermissionSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGFolderPermissionSerializer 

+ (NSDictionary *)serialize:(DBSHARINGFolderPermission *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"action"] = [DBSHARINGFolderActionSerializer serialize:valueObj.action];
    jsonDict[@"allow"] = valueObj.allow;
    if (valueObj.reason) {
        jsonDict[@"reason"] = [DBSHARINGPermissionDeniedReasonSerializer serialize:valueObj.reason];
    }

    return jsonDict;
}

+ (DBSHARINGFolderPermission *)deserialize:(NSDictionary *)valueDict {
    DBSHARINGFolderAction *action = [DBSHARINGFolderActionSerializer deserialize:valueDict[@"action"]];
    NSNumber *allow = valueDict[@"allow"];
    DBSHARINGPermissionDeniedReason *reason = valueDict[@"reason"] ? [DBSHARINGPermissionDeniedReasonSerializer deserialize:valueDict[@"reason"]] : nil;

    return [[DBSHARINGFolderPermission alloc] initWithAction:action allow:allow reason:reason];
}

@end
