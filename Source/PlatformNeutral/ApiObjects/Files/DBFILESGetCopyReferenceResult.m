///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESGetCopyReferenceResult.h"
#import "DBFILESMetadata.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESGetCopyReferenceResult 

#pragma mark - Constructors

- (instancetype)initWithMetadata:(DBFILESMetadata *)metadata dCopyReference:(NSString *)dCopyReference expires:(NSDate *)expires {

    self = [super init];
    if (self) {
        _metadata = metadata;
        _dCopyReference = dCopyReference;
        _expires = expires;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBFILESGetCopyReferenceResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBFILESGetCopyReferenceResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBFILESGetCopyReferenceResultSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBFILESGetCopyReferenceResultSerializer 

+ (NSDictionary *)serialize:(DBFILESGetCopyReferenceResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"metadata"] = [DBFILESMetadataSerializer serialize:valueObj.metadata];
    jsonDict[@"copy_reference"] = valueObj.dCopyReference;
    jsonDict[@"expires"] = [DBNSDateSerializer serialize:valueObj.expires dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];

    return jsonDict;
}

+ (DBFILESGetCopyReferenceResult *)deserialize:(NSDictionary *)valueDict {
    DBFILESMetadata *metadata = [DBFILESMetadataSerializer deserialize:valueDict[@"metadata"]];
    NSString *dCopyReference = valueDict[@"copy_reference"];
    NSDate *expires = [DBNSDateSerializer deserialize:valueDict[@"expires"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];

    return [[DBFILESGetCopyReferenceResult alloc] initWithMetadata:metadata dCopyReference:dCopyReference expires:expires];
}

@end
