///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBFILESLookUpPropertiesError;
@class DBFILESLookupError;
@class DBFILESUpdatePropertiesError;

#pragma mark - API Object

/// 
/// The UpdatePropertiesError union.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBFILESUpdatePropertiesError : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The DBFILESUpdatePropertiesErrorTag enum type represents the possible tag
/// states with which the DBFILESUpdatePropertiesError union can exist.
typedef NS_ENUM(NSInteger, DBFILESUpdatePropertiesErrorTag) {
    /// Property template does not exist for given identifier.
    DBFILESUpdatePropertiesErrorTemplateNotFound,

    /// You do not have the permissions to modify this property template.
    DBFILESUpdatePropertiesErrorRestrictedContent,

    /// (no description).
    DBFILESUpdatePropertiesErrorOther,

    /// (no description).
    DBFILESUpdatePropertiesErrorPath,

    /// A field value in this property group is too large.
    DBFILESUpdatePropertiesErrorPropertyFieldTooLarge,

    /// The property group specified does not conform to the property template.
    DBFILESUpdatePropertiesErrorDoesNotFitTemplate,

    /// (no description).
    DBFILESUpdatePropertiesErrorPropertyGroupLookup,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBFILESUpdatePropertiesErrorTag tag;

/// Property template does not exist for given identifier. Ensure the
/// isTemplateNotFound method returns true before accessing, otherwise a runtime
/// exception will be raised.
@property (nonatomic, readonly, copy) NSString * _Nonnull templateNotFound;

/// (no description). Ensure the isPath method returns true before accessing,
/// otherwise a runtime exception will be raised.
@property (nonatomic, readonly) DBFILESLookupError * _Nonnull path;

/// (no description). Ensure the isPropertyGroupLookup method returns true
/// before accessing, otherwise a runtime exception will be raised.
@property (nonatomic, readonly) DBFILESLookUpPropertiesError * _Nonnull propertyGroupLookup;

#pragma mark - Constructors

/// 
/// Initializes union class with tag state of TemplateNotFound.
/// 
/// About the TemplateNotFound tag state: Property template does not exist for
/// given identifier.
/// 
/// @param templateNotFound Property template does not exist for given
/// identifier.
/// 
/// @return An initialized DBFILESUpdatePropertiesError instance.
/// 
- (nonnull instancetype)initWithTemplateNotFound:(NSString * _Nonnull)templateNotFound;

/// 
/// Initializes union class with tag state of RestrictedContent.
/// 
/// About the RestrictedContent tag state: You do not have the permissions to
/// modify this property template.
/// 
/// @return An initialized DBFILESUpdatePropertiesError instance.
/// 
- (nonnull instancetype)initWithRestrictedContent;

/// 
/// Initializes union class with tag state of Other.
/// 
/// @return An initialized DBFILESUpdatePropertiesError instance.
/// 
- (nonnull instancetype)initWithOther;

/// 
/// Initializes union class with tag state of Path.
/// 
/// @param path (no description).
/// 
/// @return An initialized DBFILESUpdatePropertiesError instance.
/// 
- (nonnull instancetype)initWithPath:(DBFILESLookupError * _Nonnull)path;

/// 
/// Initializes union class with tag state of PropertyFieldTooLarge.
/// 
/// About the PropertyFieldTooLarge tag state: A field value in this property
/// group is too large.
/// 
/// @return An initialized DBFILESUpdatePropertiesError instance.
/// 
- (nonnull instancetype)initWithPropertyFieldTooLarge;

/// 
/// Initializes union class with tag state of DoesNotFitTemplate.
/// 
/// About the DoesNotFitTemplate tag state: The property group specified does
/// not conform to the property template.
/// 
/// @return An initialized DBFILESUpdatePropertiesError instance.
/// 
- (nonnull instancetype)initWithDoesNotFitTemplate;

/// 
/// Initializes union class with tag state of PropertyGroupLookup.
/// 
/// @param propertyGroupLookup (no description).
/// 
/// @return An initialized DBFILESUpdatePropertiesError instance.
/// 
- (nonnull instancetype)initWithPropertyGroupLookup:(DBFILESLookUpPropertiesError * _Nonnull)propertyGroupLookup;

#pragma mark - Tag state methods

/// 
/// Retrieves whether the union's current tag state has value TemplateNotFound.
/// 
/// @note Call this method and ensure it returns true before accessing the
/// templateNotFound property, otherwise a runtime exception will be thrown.
/// 
/// @return Whether the union's current tag state has value TemplateNotFound.
/// 
- (BOOL)isTemplateNotFound;

/// 
/// Retrieves whether the union's current tag state has value RestrictedContent.
/// 
/// @return Whether the union's current tag state has value RestrictedContent.
/// 
- (BOOL)isRestrictedContent;

/// 
/// Retrieves whether the union's current tag state has value Other.
/// 
/// @return Whether the union's current tag state has value Other.
/// 
- (BOOL)isOther;

/// 
/// Retrieves whether the union's current tag state has value Path.
/// 
/// @note Call this method and ensure it returns true before accessing the path
/// property, otherwise a runtime exception will be thrown.
/// 
/// @return Whether the union's current tag state has value Path.
/// 
- (BOOL)isPath;

/// 
/// Retrieves whether the union's current tag state has value
/// PropertyFieldTooLarge.
/// 
/// @return Whether the union's current tag state has value
/// PropertyFieldTooLarge.
/// 
- (BOOL)isPropertyFieldTooLarge;

/// 
/// Retrieves whether the union's current tag state has value
/// DoesNotFitTemplate.
/// 
/// @return Whether the union's current tag state has value DoesNotFitTemplate.
/// 
- (BOOL)isDoesNotFitTemplate;

/// 
/// Retrieves whether the union's current tag state has value
/// PropertyGroupLookup.
/// 
/// @note Call this method and ensure it returns true before accessing the
/// propertyGroupLookup property, otherwise a runtime exception will be thrown.
/// 
/// @return Whether the union's current tag state has value PropertyGroupLookup.
/// 
- (BOOL)isPropertyGroupLookup;

/// 
/// Retrieves string value of union's current tag state.
/// 
/// @return A human-readable string representing the union's current tag state.
/// 
- (NSString * _Nonnull)tagName;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the DBFILESUpdatePropertiesError union.
/// 
@interface DBFILESUpdatePropertiesErrorSerializer : NSObject 

/// 
/// Serializes DBFILESUpdatePropertiesError instances.
/// 
/// @param instance An instance of the DBFILESUpdatePropertiesError API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBFILESUpdatePropertiesError API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBFILESUpdatePropertiesError * _Nonnull)instance;

/// 
/// Deserializes DBFILESUpdatePropertiesError instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBFILESUpdatePropertiesError API object.
/// 
/// @return An instantiation of the DBFILESUpdatePropertiesError object.
/// 
+ (DBFILESUpdatePropertiesError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
