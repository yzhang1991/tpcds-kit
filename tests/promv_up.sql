drop table s_promotion;
create table s_promotion as
    (select P_PROMO_ID        PROM_PROMOTION_ID
          , d1.d_date         PROM_START_DATE
          , d2.d_date         PROM_END_DATE
          , P_COST            PROM_COST
          , P_RESPONSE_TARGET PROM_RESPONSE_TARGET
          , P_PROMO_NAME      PROM_PROMO_NAME
          , P_CHANNEL_DMAIL   PROM_CHANNEL_DMAIL
          , P_CHANNEL_EMAIL   PROM_CHANNEL_EMAIL
          , P_CHANNEL_CATALOG PROM_CHANNEL_CATALOG
          , P_CHANNEL_TV      PROM_CHANNEL_TV
          , P_CHANNEL_RADIO   PROM_CHANNEL_RADIO
          , P_CHANNEL_PRESS   PROM_CHANNEL_PRESS
          , P_CHANNEL_EVENT   PROM_CHANNEL_EVENT
          , P_CHANNEL_DEMO    PROM_CHANNEL_DEMO
          , P_CHANNEL_DETAILS PROM_CHANNEL_DETAILS
          , P_PURPOSE         PROM_PURPOSE
          , P_DISCOUNT_ACTIVE PROM_DISCOUNT_ACTIVE
     from promotion
              left outer join date_dim d1 on P_START_DATE_SK = d1.d_date_sk
              left outer join date_dim d2 on P_END_DATE_SK = d2.d_date_sk
     where rownum < 100);
