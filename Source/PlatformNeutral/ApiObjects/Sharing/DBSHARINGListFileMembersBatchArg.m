///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGListFileMembersBatchArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGListFileMembersBatchArg 

#pragma mark - Constructors

- (instancetype)initWithFiles:(NSArray<NSString *> *)files limit:(NSNumber *)limit {
    [DBStoneValidators arrayValidator:nil maxItems:@(100) itemValidator:[DBStoneValidators stringValidator:@(1) maxLength:nil pattern:@"((/|id:).*|nspath:[^:]*:[^:]*)"]](files);
    [DBStoneValidators numericValidator:nil maxValue:@(20)](limit ?: @(10));

    self = [super init];
    if (self) {
        _files = files;
        _limit = limit ?: @(10);
    }
    return self;
}

- (instancetype)initWithFiles:(NSArray<NSString *> *)files {
    return [self initWithFiles:files limit:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGListFileMembersBatchArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGListFileMembersBatchArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGListFileMembersBatchArgSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGListFileMembersBatchArgSerializer 

+ (NSDictionary *)serialize:(DBSHARINGListFileMembersBatchArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"files"] = [DBArraySerializer serialize:valueObj.files withBlock:^id(id elem) { return elem; }];
    jsonDict[@"limit"] = valueObj.limit;

    return jsonDict;
}

+ (DBSHARINGListFileMembersBatchArg *)deserialize:(NSDictionary *)valueDict {
    NSArray<NSString *> *files = [DBArraySerializer deserialize:valueDict[@"files"] withBlock:^id(id elem) { return elem; }];
    NSNumber *limit = valueDict[@"limit"];

    return [[DBSHARINGListFileMembersBatchArg alloc] initWithFiles:files limit:limit];
}

@end
