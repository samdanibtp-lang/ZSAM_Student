@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Student'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZSAM_STUD_C
  provider contract transactional_query
  as projection on ZSAM_STUD_I as Student
{
      @EndUserText.label: 'Student Id'
  key Id,
      @EndUserText.label: 'First Name'
      Firstname,
      @EndUserText.label: 'Last Name'
      Lastname,
      @EndUserText.label: 'Age'
      Age,
      @EndUserText.label: 'Course'
      Course,
      @EndUserText.label: 'Course Duration'
      Courseduration,
      @EndUserText.label: 'Status'
      Status,
      @EndUserText.label: 'Gender'
      Gender,
      @EndUserText.label: 'Gender Description'
      Genderdesc,
      @EndUserText.label: 'Date of Burth'
      Dob,
      @EndUserText.label: 'Date of Joining'
      Joinyear,
      @EndUserText.label: 'Year Of Pass'
      Yearofpass,
      Lastchangedat,
      Locallastchangedat
}
