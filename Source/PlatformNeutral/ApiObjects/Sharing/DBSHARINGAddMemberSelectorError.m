///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGAddMemberSelectorError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGAddMemberSelectorError 

@synthesize invalidDropboxId = _invalidDropboxId;
@synthesize invalidEmail = _invalidEmail;
@synthesize unverifiedDropboxId = _unverifiedDropboxId;

#pragma mark - Constructors

- (instancetype)initWithAutomaticGroup {
    self = [super init];
    if (self) {
        _tag = DBSHARINGAddMemberSelectorErrorAutomaticGroup;
    }
    return self;
}

- (instancetype)initWithInvalidDropboxId:(NSString *)invalidDropboxId {
    self = [super init];
    if (self) {
        _tag = DBSHARINGAddMemberSelectorErrorInvalidDropboxId;
        _invalidDropboxId = invalidDropboxId;
    }
    return self;
}

- (instancetype)initWithInvalidEmail:(NSString *)invalidEmail {
    self = [super init];
    if (self) {
        _tag = DBSHARINGAddMemberSelectorErrorInvalidEmail;
        _invalidEmail = invalidEmail;
    }
    return self;
}

- (instancetype)initWithUnverifiedDropboxId:(NSString *)unverifiedDropboxId {
    self = [super init];
    if (self) {
        _tag = DBSHARINGAddMemberSelectorErrorUnverifiedDropboxId;
        _unverifiedDropboxId = unverifiedDropboxId;
    }
    return self;
}

- (instancetype)initWithGroupDeleted {
    self = [super init];
    if (self) {
        _tag = DBSHARINGAddMemberSelectorErrorGroupDeleted;
    }
    return self;
}

- (instancetype)initWithGroupNotOnTeam {
    self = [super init];
    if (self) {
        _tag = DBSHARINGAddMemberSelectorErrorGroupNotOnTeam;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self) {
        _tag = DBSHARINGAddMemberSelectorErrorOther;
    }
    return self;
}

#pragma mark - Instance field accessors

- (NSString *)invalidDropboxId {
    if (![self isInvalidDropboxId]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBSHARINGAddMemberSelectorErrorInvalidDropboxId, but was %@.", [self tagName]];
    }
    return _invalidDropboxId;
}

- (NSString *)invalidEmail {
    if (![self isInvalidEmail]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBSHARINGAddMemberSelectorErrorInvalidEmail, but was %@.", [self tagName]];
    }
    return _invalidEmail;
}

- (NSString *)unverifiedDropboxId {
    if (![self isUnverifiedDropboxId]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBSHARINGAddMemberSelectorErrorUnverifiedDropboxId, but was %@.", [self tagName]];
    }
    return _unverifiedDropboxId;
}

#pragma mark - Tag state methods

- (BOOL)isAutomaticGroup {
    return _tag == DBSHARINGAddMemberSelectorErrorAutomaticGroup;
}

- (BOOL)isInvalidDropboxId {
    return _tag == DBSHARINGAddMemberSelectorErrorInvalidDropboxId;
}

- (BOOL)isInvalidEmail {
    return _tag == DBSHARINGAddMemberSelectorErrorInvalidEmail;
}

- (BOOL)isUnverifiedDropboxId {
    return _tag == DBSHARINGAddMemberSelectorErrorUnverifiedDropboxId;
}

- (BOOL)isGroupDeleted {
    return _tag == DBSHARINGAddMemberSelectorErrorGroupDeleted;
}

- (BOOL)isGroupNotOnTeam {
    return _tag == DBSHARINGAddMemberSelectorErrorGroupNotOnTeam;
}

- (BOOL)isOther {
    return _tag == DBSHARINGAddMemberSelectorErrorOther;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBSHARINGAddMemberSelectorErrorAutomaticGroup:
           return @"DBSHARINGAddMemberSelectorErrorAutomaticGroup";
        case DBSHARINGAddMemberSelectorErrorInvalidDropboxId:
           return @"DBSHARINGAddMemberSelectorErrorInvalidDropboxId";
        case DBSHARINGAddMemberSelectorErrorInvalidEmail:
           return @"DBSHARINGAddMemberSelectorErrorInvalidEmail";
        case DBSHARINGAddMemberSelectorErrorUnverifiedDropboxId:
           return @"DBSHARINGAddMemberSelectorErrorUnverifiedDropboxId";
        case DBSHARINGAddMemberSelectorErrorGroupDeleted:
           return @"DBSHARINGAddMemberSelectorErrorGroupDeleted";
        case DBSHARINGAddMemberSelectorErrorGroupNotOnTeam:
           return @"DBSHARINGAddMemberSelectorErrorGroupNotOnTeam";
        case DBSHARINGAddMemberSelectorErrorOther:
           return @"DBSHARINGAddMemberSelectorErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGAddMemberSelectorErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGAddMemberSelectorErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGAddMemberSelectorErrorSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGAddMemberSelectorErrorSerializer 

+ (NSDictionary *)serialize:(DBSHARINGAddMemberSelectorError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAutomaticGroup]) {
        jsonDict[@".tag"] = @"automatic_group";
    }
    else if ([valueObj isInvalidDropboxId]) {
        jsonDict[@"invalid_dropbox_id"] = valueObj.invalidDropboxId;
        jsonDict[@".tag"] = @"invalid_dropbox_id";
    }
    else if ([valueObj isInvalidEmail]) {
        jsonDict[@"invalid_email"] = valueObj.invalidEmail;
        jsonDict[@".tag"] = @"invalid_email";
    }
    else if ([valueObj isUnverifiedDropboxId]) {
        jsonDict[@"unverified_dropbox_id"] = valueObj.unverifiedDropboxId;
        jsonDict[@".tag"] = @"unverified_dropbox_id";
    }
    else if ([valueObj isGroupDeleted]) {
        jsonDict[@".tag"] = @"group_deleted";
    }
    else if ([valueObj isGroupNotOnTeam]) {
        jsonDict[@".tag"] = @"group_not_on_team";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBSHARINGAddMemberSelectorError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"automatic_group"]) {
        return [[DBSHARINGAddMemberSelectorError alloc] initWithAutomaticGroup];
    }
    else if ([tag isEqualToString:@"invalid_dropbox_id"]) {
        NSString *invalidDropboxId = valueDict[@"invalid_dropbox_id"];
        return [[DBSHARINGAddMemberSelectorError alloc] initWithInvalidDropboxId:invalidDropboxId];
    }
    else if ([tag isEqualToString:@"invalid_email"]) {
        NSString *invalidEmail = valueDict[@"invalid_email"];
        return [[DBSHARINGAddMemberSelectorError alloc] initWithInvalidEmail:invalidEmail];
    }
    else if ([tag isEqualToString:@"unverified_dropbox_id"]) {
        NSString *unverifiedDropboxId = valueDict[@"unverified_dropbox_id"];
        return [[DBSHARINGAddMemberSelectorError alloc] initWithUnverifiedDropboxId:unverifiedDropboxId];
    }
    else if ([tag isEqualToString:@"group_deleted"]) {
        return [[DBSHARINGAddMemberSelectorError alloc] initWithGroupDeleted];
    }
    else if ([tag isEqualToString:@"group_not_on_team"]) {
        return [[DBSHARINGAddMemberSelectorError alloc] initWithGroupNotOnTeam];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBSHARINGAddMemberSelectorError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
