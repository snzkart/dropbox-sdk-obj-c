///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"
#import "DBSHARINGSharedLinkMetadata.h"

@class DBSHARINGFolderLinkMetadata;
@class DBSHARINGLinkPermissions;
@class DBSHARINGTeamMemberInfo;
@class DBUSERSTeam;

#pragma mark - API Object

/// 
/// The FolderLinkMetadata struct.
/// 
/// The metadata of a folder shared link
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBSHARINGFolderLinkMetadata : DBSHARINGSharedLinkMetadata <DBSerializable> 

#pragma mark - Instance fields

#pragma mark - Constructors

/// 
/// Full constructor for the DBSHARINGFolderLinkMetadata struct (exposes all
/// instance variables).
/// 
/// @param url URL of the shared link.
/// @param name The linked file name (including extension). This never contains
/// a slash.
/// @param linkPermissions The link's access permissions.
/// @param id_ A unique identifier for the linked file.
/// @param expires Expiration time, if set. By default the link won't expire.
/// @param pathLower The lowercased full path in the user's Dropbox. This always
/// starts with a slash. This field will only be present only if the linked file
/// is in the authenticated user's  dropbox.
/// @param teamMemberInfo The team membership information of the link's owner.
/// This field will only be present  if the link's owner is a team member.
/// @param contentOwnerTeamInfo The team information of the content's owner.
/// This field will only be present if the content's owner is a team member and
/// the content's owner team is different from the link's owner team.
/// 
/// @return An initialized DBSHARINGFolderLinkMetadata instance.
/// 
- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url name:(NSString * _Nonnull)name linkPermissions:(DBSHARINGLinkPermissions * _Nonnull)linkPermissions id_:(NSString * _Nullable)id_ expires:(NSDate * _Nullable)expires pathLower:(NSString * _Nullable)pathLower teamMemberInfo:(DBSHARINGTeamMemberInfo * _Nullable)teamMemberInfo contentOwnerTeamInfo:(DBUSERSTeam * _Nullable)contentOwnerTeamInfo;

/// 
/// Convenience constructor for the DBSHARINGFolderLinkMetadata struct (exposes
/// only non-nullable instance variables with no default value).
/// 
/// @param url URL of the shared link.
/// @param name The linked file name (including extension). This never contains
/// a slash.
/// @param linkPermissions The link's access permissions.
/// 
/// @return An initialized DBSHARINGFolderLinkMetadata instance.
/// 
- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url name:(NSString * _Nonnull)name linkPermissions:(DBSHARINGLinkPermissions * _Nonnull)linkPermissions;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the FolderLinkMetadata struct.
/// 
@interface DBSHARINGFolderLinkMetadataSerializer : NSObject 

/// 
/// Serializes DBSHARINGFolderLinkMetadata instances.
/// 
/// @param instance An instance of the DBSHARINGFolderLinkMetadata API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBSHARINGFolderLinkMetadata API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGFolderLinkMetadata * _Nonnull)instance;

/// 
/// Deserializes DBSHARINGFolderLinkMetadata instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBSHARINGFolderLinkMetadata API object.
/// 
/// @return An instantiation of the DBSHARINGFolderLinkMetadata object.
/// 
+ (DBSHARINGFolderLinkMetadata * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
