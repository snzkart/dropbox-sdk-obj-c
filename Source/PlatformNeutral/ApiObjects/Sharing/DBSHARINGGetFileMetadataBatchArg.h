///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBSHARINGFileAction;
@class DBSHARINGGetFileMetadataBatchArg;

#pragma mark - API Object

/// 
/// The GetFileMetadataBatchArg struct.
/// 
/// Arguments of getFileMetadataBatch
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBSHARINGGetFileMetadataBatchArg : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The files to query.
@property (nonatomic, readonly) NSArray<NSString *> * _Nonnull files;

/// File actions to query.
@property (nonatomic, readonly) NSArray<DBSHARINGFileAction *> * _Nullable actions;

#pragma mark - Constructors

/// 
/// Full constructor for the DBSHARINGGetFileMetadataBatchArg struct (exposes
/// all instance variables).
/// 
/// @param files The files to query.
/// @param actions File actions to query.
/// 
/// @return An initialized DBSHARINGGetFileMetadataBatchArg instance.
/// 
- (nonnull instancetype)initWithFiles:(NSArray<NSString *> * _Nonnull)files actions:(NSArray<DBSHARINGFileAction *> * _Nullable)actions;

/// 
/// Convenience constructor for the DBSHARINGGetFileMetadataBatchArg struct
/// (exposes only non-nullable instance variables with no default value).
/// 
/// @param files The files to query.
/// 
/// @return An initialized DBSHARINGGetFileMetadataBatchArg instance.
/// 
- (nonnull instancetype)initWithFiles:(NSArray<NSString *> * _Nonnull)files;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the GetFileMetadataBatchArg struct.
/// 
@interface DBSHARINGGetFileMetadataBatchArgSerializer : NSObject 

/// 
/// Serializes DBSHARINGGetFileMetadataBatchArg instances.
/// 
/// @param instance An instance of the DBSHARINGGetFileMetadataBatchArg API
/// object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBSHARINGGetFileMetadataBatchArg API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGGetFileMetadataBatchArg * _Nonnull)instance;

/// 
/// Deserializes DBSHARINGGetFileMetadataBatchArg instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBSHARINGGetFileMetadataBatchArg API object.
/// 
/// @return An instantiation of the DBSHARINGGetFileMetadataBatchArg object.
/// 
+ (DBSHARINGGetFileMetadataBatchArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
