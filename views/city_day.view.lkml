# The name of this view in Looker is "City Day"
view: city_day {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `breathe_india.city_day`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Aqi" in Explore.

  dimension: aqi {
    type: number
    sql: ${TABLE}.AQI ;;
  }

  dimension: aqi_bucket {
    type: string
    sql: ${TABLE}.AQI_Bucket ;;
  }

  dimension: benzene {
    type: number
    sql: ${TABLE}.Benzene ;;
  }

  dimension: btx {
    type: number
    sql: ${TABLE}.BTX ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: co {
    type: number
    sql: ${TABLE}.CO ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: no_ {
    type: number
    sql: ${TABLE}.`NO` ;;
  }

  dimension: no2 {
    type: number
    sql: ${TABLE}.NO2 ;;
  }

  dimension: nox {
    type: number
    sql: ${TABLE}.NOx ;;
  }

  dimension: o3 {
    type: number
    sql: ${TABLE}.O3 ;;
  }

  dimension: pm2_5 {
    type: number
    sql: ${TABLE}.PM2_5 ;;
  }

  dimension: pollutant_type {
    type: string
    sql: ${TABLE}.pollutant_type ;;
  }

  dimension: so2 {
    type: number
    sql: ${TABLE}.SO2 ;;
  }

  dimension: toluene {
    type: number
    sql: ${TABLE}.Toluene ;;
  }

  dimension: xylene {
    type: number
    sql: ${TABLE}.Xylene ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}