///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMGroupsGetInfoError.h"

#pragma mark - API Object

@implementation DBTEAMGroupsGetInfoError 

#pragma mark - Constructors

- (instancetype)initWithGroupNotOnTeam {
    self = [super init];
    if (self) {
        _tag = DBTEAMGroupsGetInfoErrorGroupNotOnTeam;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self) {
        _tag = DBTEAMGroupsGetInfoErrorOther;
    }
    return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isGroupNotOnTeam {
    return _tag == DBTEAMGroupsGetInfoErrorGroupNotOnTeam;
}

- (BOOL)isOther {
    return _tag == DBTEAMGroupsGetInfoErrorOther;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBTEAMGroupsGetInfoErrorGroupNotOnTeam:
           return @"DBTEAMGroupsGetInfoErrorGroupNotOnTeam";
        case DBTEAMGroupsGetInfoErrorOther:
           return @"DBTEAMGroupsGetInfoErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMGroupsGetInfoErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMGroupsGetInfoErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMGroupsGetInfoErrorSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMGroupsGetInfoErrorSerializer 

+ (NSDictionary *)serialize:(DBTEAMGroupsGetInfoError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isGroupNotOnTeam]) {
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

+ (DBTEAMGroupsGetInfoError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"group_not_on_team"]) {
        return [[DBTEAMGroupsGetInfoError alloc] initWithGroupNotOnTeam];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBTEAMGroupsGetInfoError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
