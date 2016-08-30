///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGListSharedLinksResult.h"
#import "DBSHARINGSharedLinkMetadata.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGListSharedLinksResult 

#pragma mark - Constructors

- (instancetype)initWithLinks:(NSArray<DBSHARINGSharedLinkMetadata *> *)links hasMore:(NSNumber *)hasMore cursor:(NSString *)cursor {
    [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](links);

    self = [super init];
    if (self) {
        _links = links;
        _hasMore = hasMore;
        _cursor = cursor;
    }
    return self;
}

- (instancetype)initWithLinks:(NSArray<DBSHARINGSharedLinkMetadata *> *)links hasMore:(NSNumber *)hasMore {
    return [self initWithLinks:links hasMore:hasMore cursor:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGListSharedLinksResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGListSharedLinksResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGListSharedLinksResultSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGListSharedLinksResultSerializer 

+ (NSDictionary *)serialize:(DBSHARINGListSharedLinksResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"links"] = [DBArraySerializer serialize:valueObj.links withBlock:^id(id elem) { return [DBSHARINGSharedLinkMetadataSerializer serialize:elem]; }];
    jsonDict[@"has_more"] = valueObj.hasMore;
    if (valueObj.cursor) {
        jsonDict[@"cursor"] = valueObj.cursor;
    }

    return jsonDict;
}

+ (DBSHARINGListSharedLinksResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DBSHARINGSharedLinkMetadata *> *links = [DBArraySerializer deserialize:valueDict[@"links"] withBlock:^id(id elem) { return [DBSHARINGSharedLinkMetadataSerializer deserialize:elem]; }];
    NSNumber *hasMore = valueDict[@"has_more"];
    NSString *cursor = valueDict[@"cursor"] ?: nil;

    return [[DBSHARINGListSharedLinksResult alloc] initWithLinks:links hasMore:hasMore cursor:cursor];
}

@end
