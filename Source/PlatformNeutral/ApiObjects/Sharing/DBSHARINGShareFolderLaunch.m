///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBASYNCLaunchResultBase.h"
#import "DBSHARINGShareFolderLaunch.h"
#import "DBSHARINGSharedFolderMetadata.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGShareFolderLaunch 

@synthesize asyncJobId = _asyncJobId;
@synthesize complete = _complete;

#pragma mark - Constructors

- (instancetype)initWithAsyncJobId:(NSString *)asyncJobId {
    self = [super init];
    if (self) {
        _tag = DBSHARINGShareFolderLaunchAsyncJobId;
        _asyncJobId = asyncJobId;
    }
    return self;
}

- (instancetype)initWithComplete:(DBSHARINGSharedFolderMetadata *)complete {
    self = [super init];
    if (self) {
        _tag = DBSHARINGShareFolderLaunchComplete;
        _complete = complete;
    }
    return self;
}

#pragma mark - Instance field accessors

- (NSString *)asyncJobId {
    if (![self isAsyncJobId]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBSHARINGShareFolderLaunchAsyncJobId, but was %@.", [self tagName]];
    }
    return _asyncJobId;
}

- (DBSHARINGSharedFolderMetadata *)complete {
    if (![self isComplete]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required DBSHARINGShareFolderLaunchComplete, but was %@.", [self tagName]];
    }
    return _complete;
}

#pragma mark - Tag state methods

- (BOOL)isAsyncJobId {
    return _tag == DBSHARINGShareFolderLaunchAsyncJobId;
}

- (BOOL)isComplete {
    return _tag == DBSHARINGShareFolderLaunchComplete;
}

- (NSString *)tagName {
    switch (_tag) {
        case DBSHARINGShareFolderLaunchAsyncJobId:
           return @"DBSHARINGShareFolderLaunchAsyncJobId";
        case DBSHARINGShareFolderLaunchComplete:
           return @"DBSHARINGShareFolderLaunchComplete";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGShareFolderLaunchSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGShareFolderLaunchSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGShareFolderLaunchSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGShareFolderLaunchSerializer 

+ (NSDictionary *)serialize:(DBSHARINGShareFolderLaunch *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAsyncJobId]) {
        jsonDict[@"async_job_id"] = valueObj.asyncJobId;
        jsonDict[@".tag"] = @"async_job_id";
    }
    else if ([valueObj isComplete]) {
        jsonDict = [[DBSHARINGSharedFolderMetadataSerializer serialize:valueObj.complete] mutableCopy];
        jsonDict[@".tag"] = @"complete";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBSHARINGShareFolderLaunch *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"async_job_id"]) {
        NSString *asyncJobId = valueDict[@"async_job_id"];
        return [[DBSHARINGShareFolderLaunch alloc] initWithAsyncJobId:asyncJobId];
    }
    else if ([tag isEqualToString:@"complete"]) {
        DBSHARINGSharedFolderMetadata *complete = [DBSHARINGSharedFolderMetadataSerializer deserialize:valueDict];
        return [[DBSHARINGShareFolderLaunch alloc] initWithComplete:complete];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
