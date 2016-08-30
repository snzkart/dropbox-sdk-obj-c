///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMIncludeMembersArg.h"

#pragma mark - API Object

@implementation DBTEAMIncludeMembersArg 

#pragma mark - Constructors

- (instancetype)initWithReturnMembers:(NSNumber *)returnMembers {

    self = [super init];
    if (self) {
        _returnMembers = returnMembers ?: @YES;
    }
    return self;
}

- (instancetype)init {
    return [self initWithReturnMembers:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMIncludeMembersArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMIncludeMembersArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMIncludeMembersArgSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMIncludeMembersArgSerializer 

+ (NSDictionary *)serialize:(DBTEAMIncludeMembersArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"return_members"] = valueObj.returnMembers;

    return jsonDict;
}

+ (DBTEAMIncludeMembersArg *)deserialize:(NSDictionary *)valueDict {
    NSNumber *returnMembers = valueDict[@"return_members"];

    return [[DBTEAMIncludeMembersArg alloc] initWithReturnMembers:returnMembers];
}

@end
