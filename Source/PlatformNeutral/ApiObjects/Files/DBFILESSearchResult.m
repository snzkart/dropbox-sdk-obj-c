///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESSearchMatch.h"
#import "DBFILESSearchResult.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESSearchResult 

#pragma mark - Constructors

- (instancetype)initWithMatches:(NSArray<DBFILESSearchMatch *> *)matches more:(NSNumber *)more start:(NSNumber *)start {
    [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](matches);

    self = [super init];
    if (self) {
        _matches = matches;
        _more = more;
        _start = start;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBFILESSearchResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBFILESSearchResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBFILESSearchResultSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBFILESSearchResultSerializer 

+ (NSDictionary *)serialize:(DBFILESSearchResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"matches"] = [DBArraySerializer serialize:valueObj.matches withBlock:^id(id elem) { return [DBFILESSearchMatchSerializer serialize:elem]; }];
    jsonDict[@"more"] = valueObj.more;
    jsonDict[@"start"] = valueObj.start;

    return jsonDict;
}

+ (DBFILESSearchResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DBFILESSearchMatch *> *matches = [DBArraySerializer deserialize:valueDict[@"matches"] withBlock:^id(id elem) { return [DBFILESSearchMatchSerializer deserialize:elem]; }];
    NSNumber *more = valueDict[@"more"];
    NSNumber *start = valueDict[@"start"];

    return [[DBFILESSearchResult alloc] initWithMatches:matches more:more start:start];
}

@end
