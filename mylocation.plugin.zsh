# ------------------------------------------------------------------------------
#          FILE: mylocation.plugin.zsh
#        AUTHOR: Kasper Friis Christensen (kasper[at]friischristensen.com)
#       VERSION: 1.0.0
# -----------------------------------------------------------------------------
function mylocation() {
        ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
  location=$(curl -s freegeoip.net/csv/$ip)
   country=$(cut -d',' -f3 <<< $location)

  case $country in
           'Argentina') flag='🇦🇷';;
           'Australia') flag='🇦🇺';;
             'Austria') flag='🇦🇹';;
             'Bahrain') flag='🇧🇭';;
             'Belgium') flag='🇧🇪';;
              'Brazil') flag='🇧🇷';;
              'Canada') flag='🇨🇦';;
            'Colombia') flag='🇨🇴';;
          'Costa Rica') flag='🇨🇷';;
      'Czech Republic') flag='🇨🇿';;
             'Denmark') flag='🇩🇰';;
             'Finland') flag='🇫🇮';;
              'France') flag='🇫🇷';;
             'Germany') flag='🇩🇪';;
           'Hong Kong') flag='🇭🇰';;
             'Iceland') flag='🇮🇸';;
               'India') flag='🇮🇳';;
           'Indonesia') flag='🇮🇩';;
             'Ireland') flag='🇮🇪';;
              'Israel') flag='🇵🇸';;
               'Italy') flag='🇮🇹';;
               'Japan') flag='🇯🇵';;
           'Lithuania') flag='🇱🇹';;
          'Luxembourg') flag='🇱🇺';;
            'Malaysia') flag='🇲🇾';;
              'Mexico') flag='🇲🇽';;
         'Netherlands') flag='🇳🇱';;
         'New Zealand') flag='🇳🇿';;
              'Norway') flag='🇳🇴';;
              'Panama') flag='🇵🇦';;
         'Philippines') flag='🇵🇭';;
              'Poland') flag='🇵🇱';;
            'Portugal') flag='🇵🇹';;
               'Qatar') flag='🇶🇦';;
             'Romania') flag='🇷🇴';;
              'Russia') flag='🇷🇺';;
        'Saudi Arabia') flag='🇸🇦';;
           'Singapore') flag='🇸🇬';;
         'South Korea') flag='🇰🇷';;
               'Spain') flag='🇪🇸';;
              'Sweden') flag='🇸🇪';;
         'Switzerland') flag='🇨🇭';;
              'Taiwan') flag='🇹🇼';;
            'Thailand') flag='🇹🇭';;
              'Turkey') flag='🇹🇷';;
       'United States') flag='🇺🇸';;
'United Arab Emirates') flag='🇦🇪';;
      'United Kingdom') flag='🇬🇧';;
             'Vietnam') flag='🇻🇳';;
                     *) flag=$country;;
  esac

  echo $flag;
}
