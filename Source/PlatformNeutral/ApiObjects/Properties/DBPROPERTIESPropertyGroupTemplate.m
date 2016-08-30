///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBPROPERTIESPropertyFieldTemplate.h"
#import "DBPROPERTIESPropertyGroupTemplate.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBPROPERTIESPropertyGroupTemplate 

#pragma mark - Constructors

- (instancetype)initWithName:(NSString *)name description_:(NSString *)description_ fields:(NSArray<DBPROPERTIESPropertyFieldTemplate *> *)fields {
    [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](fields);

    self = [super init];
    if (self) {
        _name = name;
        _description_ = description_;
        _fields = fields;
    }
    return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBPROPERTIESPropertyGroupTemplateSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBPROPERTIESPropertyGroupTemplateSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBPROPERTIESPropertyGroupTemplateSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBPROPERTIESPropertyGroupTemplateSerializer 

+ (NSDictionary *)serialize:(DBPROPERTIESPropertyGroupTemplate *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"name"] = valueObj.name;
    jsonDict[@"description"] = valueObj.description_;
    jsonDict[@"fields"] = [DBArraySerializer serialize:valueObj.fields withBlock:^id(id elem) { return [DBPROPERTIESPropertyFieldTemplateSerializer serialize:elem]; }];

    return jsonDict;
}

+ (DBPROPERTIESPropertyGroupTemplate *)deserialize:(NSDictionary *)valueDict {
    NSString *name = valueDict[@"name"];
    NSString *description_ = valueDict[@"description"];
    NSArray<DBPROPERTIESPropertyFieldTemplate *> *fields = [DBArraySerializer deserialize:valueDict[@"fields"] withBlock:^id(id elem) { return [DBPROPERTIESPropertyFieldTemplateSerializer deserialize:elem]; }];

    return [[DBPROPERTIESPropertyGroupTemplate alloc] initWithName:name description_:description_ fields:fields];
}

@end
