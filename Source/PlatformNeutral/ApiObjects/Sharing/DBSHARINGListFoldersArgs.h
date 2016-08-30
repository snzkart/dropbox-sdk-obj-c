///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBSHARINGFolderAction;
@class DBSHARINGListFoldersArgs;

#pragma mark - API Object

/// 
/// The ListFoldersArgs struct.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBSHARINGListFoldersArgs : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The maximum number of results to return per request.
@property (nonatomic, readonly, copy) NSNumber * _Nonnull limit;

/// This is a list indicating whether each returned folder data entry will
/// include a boolean field allow in FolderPermission that describes whether the
/// current user can perform the `FolderAction` on the folder.
@property (nonatomic, readonly) NSArray<DBSHARINGFolderAction *> * _Nullable actions;

#pragma mark - Constructors

/// 
/// Full constructor for the DBSHARINGListFoldersArgs struct (exposes all
/// instance variables).
/// 
/// @param limit The maximum number of results to return per request.
/// @param actions This is a list indicating whether each returned folder data
/// entry will include a boolean field :field:`FolderPermission.allow` that
/// describes whether the current user can perform the `FolderAction` on the
/// folder.
/// 
/// @return An initialized DBSHARINGListFoldersArgs instance.
/// 
- (nonnull instancetype)initWithLimit:(NSNumber * _Nullable)limit actions:(NSArray<DBSHARINGFolderAction *> * _Nullable)actions;

/// 
/// Convenience constructor for the DBSHARINGListFoldersArgs struct (exposes
/// only non-nullable instance variables with no default value).
/// 
/// 
/// @return An initialized DBSHARINGListFoldersArgs instance.
/// 
- (nonnull instancetype)init;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the ListFoldersArgs struct.
/// 
@interface DBSHARINGListFoldersArgsSerializer : NSObject 

/// 
/// Serializes DBSHARINGListFoldersArgs instances.
/// 
/// @param instance An instance of the DBSHARINGListFoldersArgs API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBSHARINGListFoldersArgs API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGListFoldersArgs * _Nonnull)instance;

/// 
/// Deserializes DBSHARINGListFoldersArgs instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBSHARINGListFoldersArgs API object.
/// 
/// @return An instantiation of the DBSHARINGListFoldersArgs object.
/// 
+ (DBSHARINGListFoldersArgs * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
