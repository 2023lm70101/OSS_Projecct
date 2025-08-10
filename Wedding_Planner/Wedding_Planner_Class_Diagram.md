# Wedding Planner System - Class Diagram

## Overview
This document provides a comprehensive class diagram for the Wedding Planner Management System, showing all entities, their attributes, relationships, and enums.

## Class Diagram

```mermaid
classDiagram
    %% Enums
    class Gender {
        <<enumeration>>
        MALE
        FEMALE
    }
    
    class AccessLevel {
        <<enumeration>>
        LEVEL_0("0")
        LEVEL_1("1")
        LEVEL_2("2")
        +getValue() String
    }
    
    class Priority {
        <<enumeration>>
        A
        B
        C
        D
        E
    }
    
    class OutOfTown {
        <<enumeration>>
        YES
        NO
    }
    
    class Status {
        <<enumeration>>
        ACTIVE
        INACTIVE
    }

    %% Main Entity Classes
    class User {
        -int user_id
        -String firstname
        -String lastname
        -Gender gender
        -String username
        -String password
        -String email
        -String designation
        -String address
        -AccessLevel accessLevel
        -String profilePicture
        -String dateCreated
        +getUser_id() int
        +setUser_id(int)
        +getFirstname() String
        +setFirstname(String)
        +getLastname() String
        +setLastname(String)
        +getGender() Gender
        +setGender(Gender)
        +getUsername() String
        +setUsername(String)
        +getPassword() String
        +setPassword(String)
        +getEmail() String
        +setEmail(String)
        +getDesignation() String
        +setDesignation(String)
        +getAddress() String
        +setAddress(String)
        +getAccessLevel() AccessLevel
        +setAccessLevel(AccessLevel)
        +getProfilePicture() String
        +setProfilePicture(String)
        +getDateCreated() String
        +setDateCreated(String)
    }

    class WeddingBook {
        -int booking_Id
        -String bride
        -String groom
        -String userEmail
        -String weddingDate
        +getBooking_Id() int
        +setBooking_Id(int)
        +getBride() String
        +setBride(String)
        +getGroom() String
        +setGroom(String)
        +getUserEmail() String
        +setUserEmail(String)
        +getWeddingDate() String
        +setWeddingDate(String)
    }

    class Events {
        -int event_id
        -String title
        -String location
        -Date dateCreated
        -String color
        -Date start
        -Date end
        +getId() int
        +setId(int)
        +getTitle() String
        +setTitle(String)
        +getLocation() String
        +setLocation(String)
        +getDateCreated() Date
        +setDateCreated(Date)
        +getColor() String
        +setColor(String)
        +getStart() Date
        +setStart(Date)
        +getEnd() Date
        +setEnd(Date)
    }

    class Guest {
        -int id
        -String fullname
        -String guestname
        -String address
        -String state
        -String zipcode
        -Priority priority
        -OutOfTown outOfTown
        -String relationship
        -String tracksAndGifts
        -String city
        +getId() int
        +setId(int)
        +getFullname() String
        +setFullname(String)
        +getGuestname() String
        +setGuestname(String)
        +getAddress() String
        +setAddress(String)
        +getState() String
        +setState(String)
        +getZipcode() String
        +setZipcode(String)
        +getPriority() Priority
        +setPriority(Priority)
        +getOutOfTown() OutOfTown
        +setOutOfTown(OutOfTown)
        +getRelationship() String
        +setRelationship(String)
        +getTracksAndGifts() String
        +setTracksAndGifts(String)
        +getCity() String
        +setCity(String)
    }

    class Account {
        -int id
        -String userEmail
        -String userPassword
        -AccessLevel accessLevel
        +getId() int
        +setId(int)
        +getUserEmail() String
        +setUserEmail(String)
        +getUserPassword() String
        +setUserPassword(String)
        +getAccessLevel() AccessLevel
        +setAccessLevel(AccessLevel)
    }

    class AccountDetail {
        -int id
        -String firstname
        -String lastname
        -String phone
        -String city
        -Timestamp datetimeCreated
        -String description
        -String location
        -String expectationVisitor
        -BigDecimal cashAdvanced
        -String status
        -Date dateSigned
        +getId() int
        +setId(int)
        +getFirstname() String
        +setFirstname(String)
        +getLastname() String
        +setLastname(String)
        +getPhone() String
        +setPhone(String)
        +getCity() String
        +setCity(String)
        +getDatetimeCreated() Timestamp
        +setDatetimeCreated(Timestamp)
        +getDescription() String
        +setDescription(String)
        +getLocation() String
        +setLocation(String)
        +getExpectationVisitor() String
        +setExpectationVisitor(String)
        +getCashAdvanced() BigDecimal
        +setCashAdvanced(BigDecimal)
        +getStatus() String
        +setStatus(String)
        +getDateSigned() Date
        +setDateSigned(Date)
    }

    class Organizer {
        -int organizer_Id
        -String fullname
        -String designation
        -Timestamp datetimeCreated
        +getOrganizerId() int
        +setOrganizerId(int)
        +getFullname() String
        +setFullname(String)
        +getDesignation() String
        +setDesignation(String)
        +getDatetimeCreated() Timestamp
        +setDatetimeCreated(Timestamp)
    }

    class WeddingCategory {
        -int category_id
        -String wedding_type
        -double price
        -String previewImage
        -byte[] preview_Image
        +getCategory_id() int
        +setCategory_id(int)
        +getWedding_type() String
        +setWedding_type(String)
        +getPrice() double
        +setPrice(double)
        +getPreviewImage() String
        +setPreviewImage(String)
        +getPreview_Image() byte[]
        +setPreview_Image(byte[])
    }

    class Gallery {
        -int id
        -String title
        -String caption
        -String description
        -String filename
        -String alternateText
        -String type
        -String size
        -int relateId
        +getId() int
        +setId(int)
        +getTitle() String
        +setTitle(String)
        +getCaption() String
        +setCaption(String)
        +getDescription() String
        +setDescription(String)
        +getFilename() String
        +setFilename(String)
        +getAlternateText() String
        +setAlternateText(String)
        +getType() String
        +setType(String)
        +getSize() String
        +setSize(String)
        +getRelateId() int
        +setRelateId(int)
    }

    class Liquidation {
        -int id
        -double payment
        -double cash
        -double credit
        -String dateIssue
        -String dateModified
        +getId() int
        +setId(int)
        +getPayment() double
        +setPayment(double)
        +getCash() double
        +setCash(double)
        +getCredit() double
        +setCredit(double)
        +getDateIssue() String
        +setDateIssue(String)
        +getDateModified() String
        +setDateModified(String)
    }

    class Feature {
        -int featureId
        -String wedingType
        -String title
        -String description
        +getFeatureId() int
        +setFeatureId(int)
        +getwedingType() String
        +setwedingType(String)
        +getTitle() String
        +setTitle(String)
        +getDescription() String
        +setDescription(String)
    }

    class PostWedding {
        -int id
        -String title
        -String description
        -String location
        -Status status
        -String weddingDate
        -String dateCreated
        -String datePublished
        -String previewImage
        +getId() int
        +setId(int)
        +getTitle() String
        +setTitle(String)
        +getDescription() String
        +setDescription(String)
        +getLocation() String
        +setLocation(String)
        +getStatus() Status
        +setStatus(Status)
        +getWeddingDate() String
        +setWeddingDate(String)
        +getDateCreated() String
        +setDateCreated(String)
        +getDatePublished() String
        +setDatePublished(String)
        +getPreviewImage() String
        +setPreviewImage(String)
    }

    class Calendar {
        -int id
        -String title
        -String startDate
        -String endDate
        -boolean allDay
        +getId() int
        +setId(int)
        +getTitle() String
        +setTitle(String)
        +getStartDate() String
        +setStartDate(String)
        +getEndDate() String
        +setEndDate(String)
        +isAllDay() boolean
        +setAllDay(boolean)
    }

    %% Relationships
    User ||--o{ Account : "has"
    User ||--o{ AccountDetail : "has"
    User ||--o{ WeddingBook : "books"
    User ||--o{ Liquidation : "makes"
    
    WeddingBook ||--o{ Events : "contains"
    WeddingBook ||--o{ Gallery : "has"
    WeddingBook ||--o{ Guest : "invites"
    WeddingBook ||--o{ Liquidation : "generates"
    WeddingBook }o--|| User : "belongs to"
    WeddingBook }o--|| WeddingCategory : "categorized as"
    WeddingBook }o--|| Organizer : "managed by"
    
    Events ||--o{ Liquidation : "creates"
    Events }o--|| WeddingBook : "belongs to"
    
    Guest }o--|| WeddingBook : "invited to"
    
    Liquidation }o--|| WeddingBook : "for"
    Liquidation }o--|| User : "by"
    Liquidation }o--|| Events : "for"
    
    WeddingCategory ||--o{ Feature : "offers"
    WeddingCategory ||--o{ PostWedding : "showcases"
    WeddingCategory ||--o{ WeddingBook : "categorizes"
    
    Feature }o--|| WeddingCategory : "belongs to"
    PostWedding }o--|| WeddingCategory : "belongs to"
    
    Organizer ||--o{ WeddingBook : "manages"
    
    Account }o--|| User : "belongs to"
    AccountDetail }o--|| User : "belongs to"
    
    %% Enum relationships
    User --> Gender : "has"
    User --> AccessLevel : "has"
    Account --> AccessLevel : "has"
    Guest --> Priority : "has"
    Guest --> OutOfTown : "is"
    PostWedding --> Status : "has"
```

## Key Relationships Summary

### One-to-Many Relationships:
1. **User** → **Account** (1:N) - A user can have multiple accounts
2. **User** → **AccountDetail** (1:N) - A user can have multiple account details
3. **User** → **WeddingBook** (1:N) - A user can book multiple weddings
4. **User** → **Liquidation** (1:N) - A user can make multiple payments
5. **WeddingBook** → **Events** (1:N) - A wedding booking can have multiple events
6. **WeddingBook** → **Gallery** (1:N) - A wedding booking can have multiple gallery items
7. **WeddingBook** → **Guest** (1:N) - A wedding booking can invite multiple guests
8. **WeddingBook** → **Liquidation** (1:N) - A wedding booking can generate multiple payments
9. **Events** → **Liquidation** (1:N) - An event can create multiple payments
10. **WeddingCategory** → **Feature** (1:N) - A category can have multiple features
11. **WeddingCategory** → **PostWedding** (1:N) - A category can showcase multiple post-wedding items
12. **WeddingCategory** → **WeddingBook** (1:N) - A category can categorize multiple bookings
13. **Organizer** → **WeddingBook** (1:N) - An organizer can manage multiple bookings

### Many-to-One Relationships:
1. **Account** → **User** (N:1) - Multiple accounts belong to one user
2. **AccountDetail** → **User** (N:1) - Multiple account details belong to one user
3. **WeddingBook** → **User** (N:1) - Multiple bookings belong to one user
4. **WeddingBook** → **WeddingCategory** (N:1) - Multiple bookings belong to one category
5. **WeddingBook** → **Organizer** (N:1) - Multiple bookings are managed by one organizer
6. **Events** → **WeddingBook** (N:1) - Multiple events belong to one booking
7. **Gallery** → **WeddingBook** (N:1) - Multiple gallery items belong to one booking
8. **Guest** → **WeddingBook** (N:1) - Multiple guests are invited to one booking
9. **Liquidation** → **WeddingBook** (N:1) - Multiple payments are for one booking
10. **Liquidation** → **User** (N:1) - Multiple payments are made by one user
11. **Liquidation** → **Events** (N:1) - Multiple payments are for one event
12. **Feature** → **WeddingCategory** (N:1) - Multiple features belong to one category
13. **PostWedding** → **WeddingCategory** (N:1) - Multiple post-wedding items belong to one category

## Enums Used:
- **Gender**: MALE, FEMALE
- **AccessLevel**: LEVEL_0, LEVEL_1, LEVEL_2
- **Priority**: A, B, C, D, E
- **OutOfTown**: YES, NO
- **Status**: ACTIVE, INACTIVE

## Database Tables:
- tblusers
- tblweddingbook
- events
- tblguest
- tblaccounts
- tblaccounts_detail
- tblorganizer
- tblweddingcategories
- tblgallery
- tbl_liquidation
- tbl_features
- tblpostwedding
- calendar

## Key Features:
1. **User Management**: Complete user registration and authentication system
2. **Wedding Booking**: Comprehensive wedding booking management
3. **Event Management**: Calendar-based event scheduling
4. **Guest Management**: Guest list management with priority levels
5. **Gallery Management**: Photo and media management for weddings
6. **Payment Tracking**: Liquidation and payment management
7. **Category Management**: Different wedding package categories
8. **Organizer Management**: Wedding organizer assignment
9. **Post-Wedding**: Post-wedding content management
10. **Feature Management**: Wedding package features

This class diagram represents a comprehensive wedding planning management system with proper separation of concerns and well-defined relationships between entities. 