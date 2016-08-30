///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESRemovePropertiesArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESRemovePropertiesArg 

#pragma mark - Constructors

- (instancetype)initWithPath:(NSString *)path propertyTemplateIds:(NSArray<NSString *> *)propertyTemplateIds {
    [DBStoneValidators stringValidator:nil maxLength:nil pattern:@"/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)"](path);
    [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:[DBStoneValidators stringValidator:@(1) maxLength:nil pattern:@"(/|ptid:).*"]](propertyTemplateIds);

    self = [super init];
    if (self) {
        _path = path;
        _propertyTemplateIds = propertyTemplateIds;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBFILESRemovePropertiesArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBFILESRemovePropertiesArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBFILESRemovePropertiesArgSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBFILESRemovePropertiesArgSerializer 

+ (NSDictionary *)serialize:(DBFILESRemovePropertiesArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = valueObj.path;
    jsonDict[@"property_template_ids"] = [DBArraySerializer serialize:valueObj.propertyTemplateIds withBlock:^id(id elem) { return elem; }];

    return jsonDict;
}

+ (DBFILESRemovePropertiesArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = valueDict[@"path"];
    NSArray<NSString *> *propertyTemplateIds = [DBArraySerializer deserialize:valueDict[@"property_template_ids"] withBlock:^id(id elem) { return elem; }];

    return [[DBFILESRemovePropertiesArg alloc] initWithPath:path propertyTemplateIds:propertyTemplateIds];
}

@end
