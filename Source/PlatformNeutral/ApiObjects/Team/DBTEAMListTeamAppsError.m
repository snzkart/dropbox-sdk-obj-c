///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMListTeamAppsError.h"

#pragma mark - API Object

@implementation DBTEAMListTeamAppsError 

#pragma mark - Constructors

- (instancetype)initWithReset {
    self = [super init];
    if (self) {
        _tag = DBTEAMListTeamAppsErrorReset;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self) {
        _tag = DBTEAMListTeamAppsErrorOther;
    }
    return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isReset {
    return _tag == DBTEAMListTeamAppsErrorReset;
}

- (BOOL)isOther {
    return _tag == DBTEAMListTeamAppsErrorOther;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBTEAMListTeamAppsErrorReset:
           return @"DBTEAMListTeamAppsErrorReset";
        case DBTEAMListTeamAppsErrorOther:
           return @"DBTEAMListTeamAppsErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMListTeamAppsErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMListTeamAppsErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMListTeamAppsErrorSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMListTeamAppsErrorSerializer 

+ (NSDictionary *)serialize:(DBTEAMListTeamAppsError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isReset]) {
        jsonDict[@".tag"] = @"reset";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBTEAMListTeamAppsError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"reset"]) {
        return [[DBTEAMListTeamAppsError alloc] initWithReset];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBTEAMListTeamAppsError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
