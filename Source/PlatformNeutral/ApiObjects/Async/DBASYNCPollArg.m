///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBASYNCPollArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBASYNCPollArg 

#pragma mark - Constructors

- (instancetype)initWithAsyncJobId:(NSString *)asyncJobId {
    [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:nil](asyncJobId);

    self = [super init];
    if (self) {
        _asyncJobId = asyncJobId;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBASYNCPollArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBASYNCPollArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBASYNCPollArgSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBASYNCPollArgSerializer 

+ (NSDictionary *)serialize:(DBASYNCPollArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"async_job_id"] = valueObj.asyncJobId;

    return jsonDict;
}

+ (DBASYNCPollArg *)deserialize:(NSDictionary *)valueDict {
    NSString *asyncJobId = valueDict[@"async_job_id"];

    return [[DBASYNCPollArg alloc] initWithAsyncJobId:asyncJobId];
}

@end
