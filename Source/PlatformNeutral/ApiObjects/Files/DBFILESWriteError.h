///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBFILESWriteConflictError;
@class DBFILESWriteError;

#pragma mark - API Object

/// 
/// The WriteError union.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBFILESWriteError : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The DBFILESWriteErrorTag enum type represents the possible tag states with
/// which the DBFILESWriteError union can exist.
typedef NS_ENUM(NSInteger, DBFILESWriteErrorTag) {
    /// (no description).
    DBFILESWriteErrorMalformedPath,

    /// Couldn't write to the target path because there was something in the
    /// way.
    DBFILESWriteErrorConflict,

    /// The user doesn't have permissions to write to the target location.
    DBFILESWriteErrorNoWritePermission,

    /// The user doesn't have enough available space (bytes) to write more data.
    DBFILESWriteErrorInsufficientSpace,

    /// Dropbox will not save the file or folder because of its name.
    DBFILESWriteErrorDisallowedName,

    /// (no description).
    DBFILESWriteErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBFILESWriteErrorTag tag;

/// (no description). Ensure the isMalformedPath method returns true before
/// accessing, otherwise a runtime exception will be raised.
@property (nonatomic, readonly, copy) NSString * _Nullable malformedPath;

/// Couldn't write to the target path because there was something in the way.
/// Ensure the isConflict method returns true before accessing, otherwise a
/// runtime exception will be raised.
@property (nonatomic, readonly) DBFILESWriteConflictError * _Nonnull conflict;

#pragma mark - Constructors

/// 
/// Initializes union class with tag state of MalformedPath.
/// 
/// @param malformedPath (no description).
/// 
/// @return An initialized DBFILESWriteError instance.
/// 
- (nonnull instancetype)initWithMalformedPath:(NSString * _Nullable)malformedPath;

/// 
/// Initializes union class with tag state of Conflict.
/// 
/// About the Conflict tag state: Couldn't write to the target path because
/// there was something in the way.
/// 
/// @param conflict Couldn't write to the target path because there was
/// something in the way.
/// 
/// @return An initialized DBFILESWriteError instance.
/// 
- (nonnull instancetype)initWithConflict:(DBFILESWriteConflictError * _Nonnull)conflict;

/// 
/// Initializes union class with tag state of NoWritePermission.
/// 
/// About the NoWritePermission tag state: The user doesn't have permissions to
/// write to the target location.
/// 
/// @return An initialized DBFILESWriteError instance.
/// 
- (nonnull instancetype)initWithNoWritePermission;

/// 
/// Initializes union class with tag state of InsufficientSpace.
/// 
/// About the InsufficientSpace tag state: The user doesn't have enough
/// available space (bytes) to write more data.
/// 
/// @return An initialized DBFILESWriteError instance.
/// 
- (nonnull instancetype)initWithInsufficientSpace;

/// 
/// Initializes union class with tag state of DisallowedName.
/// 
/// About the DisallowedName tag state: Dropbox will not save the file or folder
/// because of its name.
/// 
/// @return An initialized DBFILESWriteError instance.
/// 
- (nonnull instancetype)initWithDisallowedName;

/// 
/// Initializes union class with tag state of Other.
/// 
/// @return An initialized DBFILESWriteError instance.
/// 
- (nonnull instancetype)initWithOther;

#pragma mark - Tag state methods

/// 
/// Retrieves whether the union's current tag state has value MalformedPath.
/// 
/// @note Call this method and ensure it returns true before accessing the
/// malformedPath property, otherwise a runtime exception will be thrown.
/// 
/// @return Whether the union's current tag state has value MalformedPath.
/// 
- (BOOL)isMalformedPath;

/// 
/// Retrieves whether the union's current tag state has value Conflict.
/// 
/// @note Call this method and ensure it returns true before accessing the
/// conflict property, otherwise a runtime exception will be thrown.
/// 
/// @return Whether the union's current tag state has value Conflict.
/// 
- (BOOL)isConflict;

/// 
/// Retrieves whether the union's current tag state has value NoWritePermission.
/// 
/// @return Whether the union's current tag state has value NoWritePermission.
/// 
- (BOOL)isNoWritePermission;

/// 
/// Retrieves whether the union's current tag state has value InsufficientSpace.
/// 
/// @return Whether the union's current tag state has value InsufficientSpace.
/// 
- (BOOL)isInsufficientSpace;

/// 
/// Retrieves whether the union's current tag state has value DisallowedName.
/// 
/// @return Whether the union's current tag state has value DisallowedName.
/// 
- (BOOL)isDisallowedName;

/// 
/// Retrieves whether the union's current tag state has value Other.
/// 
/// @return Whether the union's current tag state has value Other.
/// 
- (BOOL)isOther;

/// 
/// Retrieves string value of union's current tag state.
/// 
/// @return A human-readable string representing the union's current tag state.
/// 
- (NSString * _Nonnull)tagName;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the DBFILESWriteError union.
/// 
@interface DBFILESWriteErrorSerializer : NSObject 

/// 
/// Serializes DBFILESWriteError instances.
/// 
/// @param instance An instance of the DBFILESWriteError API object.
/// 
/// @return A json-compatible dictionary representation of the DBFILESWriteError
/// API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBFILESWriteError * _Nonnull)instance;

/// 
/// Deserializes DBFILESWriteError instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBFILESWriteError API object.
/// 
/// @return An instantiation of the DBFILESWriteError object.
/// 
+ (DBFILESWriteError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
