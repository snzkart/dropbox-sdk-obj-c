///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMRevokeLinkedAppBatchError.h"

#pragma mark - API Object

@implementation DBTEAMRevokeLinkedAppBatchError 

#pragma mark - Constructors

- (instancetype)initWithOther {
    self = [super init];
    if (self) {
        _tag = DBTEAMRevokeLinkedAppBatchErrorOther;
    }
    return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isOther {
    return _tag == DBTEAMRevokeLinkedAppBatchErrorOther;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBTEAMRevokeLinkedAppBatchErrorOther:
           return @"DBTEAMRevokeLinkedAppBatchErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBTEAMRevokeLinkedAppBatchErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBTEAMRevokeLinkedAppBatchErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBTEAMRevokeLinkedAppBatchErrorSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBTEAMRevokeLinkedAppBatchErrorSerializer 

+ (NSDictionary *)serialize:(DBTEAMRevokeLinkedAppBatchError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBTEAMRevokeLinkedAppBatchError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"other"]) {
        return [[DBTEAMRevokeLinkedAppBatchError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
