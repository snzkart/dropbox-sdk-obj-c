///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGFileLinkMetadata.h"
#import "DBSHARINGFolderLinkMetadata.h"
#import "DBSHARINGLinkPermissions.h"
#import "DBSHARINGSharedLinkMetadata.h"
#import "DBSHARINGTeamMemberInfo.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBUSERSTeam.h"

#pragma mark - API Object

@implementation DBSHARINGSharedLinkMetadata 

#pragma mark - Constructors

- (instancetype)initWithUrl:(NSString *)url name:(NSString *)name linkPermissions:(DBSHARINGLinkPermissions *)linkPermissions id_:(NSString *)id_ expires:(NSDate *)expires pathLower:(NSString *)pathLower teamMemberInfo:(DBSHARINGTeamMemberInfo *)teamMemberInfo contentOwnerTeamInfo:(DBUSERSTeam *)contentOwnerTeamInfo {
    [DBStoneValidators nullableValidator:[DBStoneValidators stringValidator:@(1) maxLength:nil pattern:nil]](id_);

    self = [super init];
    if (self) {
        _url = url;
        _id_ = id_;
        _name = name;
        _expires = expires;
        _pathLower = pathLower;
        _linkPermissions = linkPermissions;
        _teamMemberInfo = teamMemberInfo;
        _contentOwnerTeamInfo = contentOwnerTeamInfo;
    }
    return self;
}

- (instancetype)initWithUrl:(NSString *)url name:(NSString *)name linkPermissions:(DBSHARINGLinkPermissions *)linkPermissions {
    return [self initWithUrl:url name:name linkPermissions:linkPermissions id_:nil expires:nil pathLower:nil teamMemberInfo:nil contentOwnerTeamInfo:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
    return [DBSHARINGSharedLinkMetadataSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBSHARINGSharedLinkMetadataSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
    return [[DBSHARINGSharedLinkMetadataSerializer serialize:self] description];
}

@end


#pragma mark - Serializer Object

@implementation DBSHARINGSharedLinkMetadataSerializer 

+ (NSDictionary *)serialize:(DBSHARINGSharedLinkMetadata *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"url"] = valueObj.url;
    jsonDict[@"name"] = valueObj.name;
    jsonDict[@"link_permissions"] = [DBSHARINGLinkPermissionsSerializer serialize:valueObj.linkPermissions];
    if (valueObj.id_) {
        jsonDict[@"id"] = valueObj.id_;
    }
    if (valueObj.expires) {
        jsonDict[@"expires"] = [DBNSDateSerializer serialize:valueObj.expires dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }
    if (valueObj.pathLower) {
        jsonDict[@"path_lower"] = valueObj.pathLower;
    }
    if (valueObj.teamMemberInfo) {
        jsonDict[@"team_member_info"] = [DBSHARINGTeamMemberInfoSerializer serialize:valueObj.teamMemberInfo];
    }
    if (valueObj.contentOwnerTeamInfo) {
        jsonDict[@"content_owner_team_info"] = [DBUSERSTeamSerializer serialize:valueObj.contentOwnerTeamInfo];
    }

    if ([valueObj isKindOfClass:[DBSHARINGFileLinkMetadata class]]) {
        NSDictionary *subTypeFields = [DBSHARINGFileLinkMetadataSerializer serialize:(DBSHARINGFileLinkMetadata *)valueObj];
        for (NSString* key in subTypeFields) {
            jsonDict[key] = subTypeFields[key];
        }
        jsonDict[@".tag"] = @"file";
    }
    else if ([valueObj isKindOfClass:[DBSHARINGFolderLinkMetadata class]]) {
        NSDictionary *subTypeFields = [DBSHARINGFolderLinkMetadataSerializer serialize:(DBSHARINGFolderLinkMetadata *)valueObj];
        for (NSString* key in subTypeFields) {
            jsonDict[key] = subTypeFields[key];
        }
        jsonDict[@".tag"] = @"folder";
    }

    return jsonDict;
}

+ (DBSHARINGSharedLinkMetadata *)deserialize:(NSDictionary *)valueDict {
    if ([valueDict[@".tag"] isEqualToString:@"file"]) {
        return [DBSHARINGFileLinkMetadataSerializer deserialize:valueDict];
    }
    if ([valueDict[@".tag"] isEqualToString:@"folder"]) {
        return [DBSHARINGFolderLinkMetadataSerializer deserialize:valueDict];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
