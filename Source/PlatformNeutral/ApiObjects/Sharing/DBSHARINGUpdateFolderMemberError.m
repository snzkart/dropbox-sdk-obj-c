///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGAddFolderMemberError.h"
#import "DBSHARINGSharedFolderAccessError.h"
#import "DBSHARINGSharedFolderMemberError.h"
#import "DBSHARINGUpdateFolderMemberError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGUpdateFolderMemberError 

@synthesize accessError = _accessError;
@synthesize memberError = _memberError;
@synthesize noExplicitAccess = _noExplicitAccess;

#pragma mark - Constructors

- (instancetype)initWithAccessError:(DBSHARINGSharedFolderAccessError *)accessError {
    self = [super init];
    if (self) {
        _tag = DBSHARINGUpdateFolderMemberErrorAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithMemberError:(DBSHARINGSharedFolderMemberError *)memberError {
    self = [super init];
    if (self) {
        _tag = DBSHARINGUpdateFolderMemberErrorMemberError;
        _memberError = memberError;
    }
    return self;
}

- (instancetype)initWithNoExplicitAccess:(DBSHARINGAddFolderMemberError *)noExplicitAccess {
    self = [super init];
    if (self) {
        _tag = DBSHARINGUpdateFolderMemberErrorNoExplicitAccess;
        _noExplicitAccess = noExplicitAccess;
    }
    return self;
}

- (instancetype)initWithInsufficientPlan {
    self = [super init];
    if (self) {
        _tag = DBSHARINGUpdateFolderMemberErrorInsufficientPlan;
    }
    return self;
}

- (instancetype)initWithNoPermission {
    self = [super init];
    if (self) {
        _tag = DBSHARINGUpdateFolderMemberErrorNoPermission;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self) {
        _tag = DBSHARINGUpdateFolderMemberErrorOther;
    }
    return self;
}

#pragma mark - Instance field accessors

- (DBSHARINGSharedFolderAccessError *)accessError {
    if (![self isAccessError]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBSHARINGUpdateFolderMemberErrorAccessError, but was %@.", [self tagName]];
    }
    return _accessError;
}

- (DBSHARINGSharedFolderMemberError *)memberError {
    if (![self isMemberError]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBSHARINGUpdateFolderMemberErrorMemberError, but was %@.", [self tagName]];
    }
    return _memberError;
}

- (DBSHARINGAddFolderMemberError *)noExplicitAccess {
    if (![self isNoExplicitAccess]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBSHARINGUpdateFolderMemberErrorNoExplicitAccess, but was %@.", [self tagName]];
    }
    return _noExplicitAccess;
}

#pragma mark - Tag state methods

- (BOOL)isAccessError {
    return _tag == DBSHARINGUpdateFolderMemberErrorAccessError;
}

- (BOOL)isMemberError {
    return _tag == DBSHARINGUpdateFolderMemberErrorMemberError;
}

- (BOOL)isNoExplicitAccess {
    return _tag == DBSHARINGUpdateFolderMemberErrorNoExplicitAccess;
}

- (BOOL)isInsufficientPlan {
    return _tag == DBSHARINGUpdateFolderMemberErrorInsufficientPlan;
}

- (BOOL)isNoPermission {
    return _tag == DBSHARINGUpdateFolderMemberErrorNoPermission;
}

- (BOOL)isOther {
    return _tag == DBSHARINGUpdateFolderMemberErrorOther;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBSHARINGUpdateFolderMemberErrorAccessError:
           return @"DBSHARINGUpdateFolderMemberErrorAccessError";
        case DBSHARINGUpdateFolderMemberErrorMemberError:
           return @"DBSHARINGUpdateFolderMemberErrorMemberError";
        case DBSHARINGUpdateFolderMemberErrorNoExplicitAccess:
           return @"DBSHARINGUpdateFolderMemberErrorNoExplicitAccess";
        case DBSHARINGUpdateFolderMemberErrorInsufficientPlan:
           return @"DBSHARINGUpdateFolderMemberErrorInsufficientPlan";
        case DBSHARINGUpdateFolderMemberErrorNoPermission:
           return @"DBSHARINGUpdateFolderMemberErrorNoPermission";
        case DBSHARINGUpdateFolderMemberErrorOther:
           return @"DBSHARINGUpdateFolderMemberErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGUpdateFolderMemberErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGUpdateFolderMemberErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGUpdateFolderMemberErrorSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGUpdateFolderMemberErrorSerializer 

+ (NSDictionary *)serialize:(DBSHARINGUpdateFolderMemberError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAccessError]) {
        jsonDict = [[DBSHARINGSharedFolderAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isMemberError]) {
        jsonDict = [[DBSHARINGSharedFolderMemberErrorSerializer serialize:valueObj.memberError] mutableCopy];
        jsonDict[@".tag"] = @"member_error";
    }
    else if ([valueObj isNoExplicitAccess]) {
        jsonDict = [[DBSHARINGAddFolderMemberErrorSerializer serialize:valueObj.noExplicitAccess] mutableCopy];
        jsonDict[@".tag"] = @"no_explicit_access";
    }
    else if ([valueObj isInsufficientPlan]) {
        jsonDict[@".tag"] = @"insufficient_plan";
    }
    else if ([valueObj isNoPermission]) {
        jsonDict[@".tag"] = @"no_permission";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBSHARINGUpdateFolderMemberError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"access_error"]) {
        DBSHARINGSharedFolderAccessError *accessError = [DBSHARINGSharedFolderAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DBSHARINGUpdateFolderMemberError alloc] initWithAccessError:accessError];
    }
    else if ([tag isEqualToString:@"member_error"]) {
        DBSHARINGSharedFolderMemberError *memberError = [DBSHARINGSharedFolderMemberErrorSerializer deserialize:valueDict[@"member_error"]];
        return [[DBSHARINGUpdateFolderMemberError alloc] initWithMemberError:memberError];
    }
    else if ([tag isEqualToString:@"no_explicit_access"]) {
        DBSHARINGAddFolderMemberError *noExplicitAccess = [DBSHARINGAddFolderMemberErrorSerializer deserialize:valueDict[@"no_explicit_access"]];
        return [[DBSHARINGUpdateFolderMemberError alloc] initWithNoExplicitAccess:noExplicitAccess];
    }
    else if ([tag isEqualToString:@"insufficient_plan"]) {
        return [[DBSHARINGUpdateFolderMemberError alloc] initWithInsufficientPlan];
    }
    else if ([tag isEqualToString:@"no_permission"]) {
        return [[DBSHARINGUpdateFolderMemberError alloc] initWithNoPermission];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBSHARINGUpdateFolderMemberError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
