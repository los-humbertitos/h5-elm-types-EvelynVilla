module Helper exposing (..)


type Grade
    = Approved
    | Failed
    | Pending


type AirplaneStatus
    = Cancelled
    | Delayed
    | OnTime
    | Boarding


categoricalGrade : List Float -> List Grade
categoricalGrade grades =
    List.map gradeCategory grades


gradeCategory : Float -> Grade
gradeCategory g =
    if g >= 7 then
        Approved

    else if g >= 0 then
        Failed

    else
        Pending


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses
