@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZSAM_STUD_I
  as select from zsam_stud_101

{

  key id                 as Id,
      firstname          as Firstname,
      lastname           as Lastname,
      age                as Age,
      course             as Course,
      courseduration     as Courseduration,
      status             as Status,
      gender             as Gender,
      genderdesc         as Genderdesc,
      dob                as Dob,
      joinyear           as Joinyear,
      yearofpass         as Yearofpass,
      lastchangedat      as Lastchangedat,
      locallastchangedat as Locallastchangedat
}
