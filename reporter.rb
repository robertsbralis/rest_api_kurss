require 'json'
require_relative  'features/support/api_helper.rb'


job_url=ARGV[1]
build_number=ARGV[0]


thumbnail={'url'=>'https://previews.123rf.com/images/rimmart/rimmart1910/rimmart191000292/132971245-caution-icon-with-triangle-form-danger-sign-on-isolated-background-caution-warning-icon-triangle-war.jpg'}
fields=[]
embed=[]
fields.push({'name'=>'Jenkins job','value'=>job_url})
fields.push({'name'=>'Build number','value'=>build_number.to_s})
embed.push({'title'=>'API automation job',
                'color'=>6288450,
                'thumbnail'=>thumbnail,
                'fields'=>fields})


payload={'content'=>'Automatic message','embeds'=>embed}.to_json

post('https://discordapp.com/api/webhooks/393067525451022336/uz2WgUi_8-6oS9zy2Pu_3l_-CtQvabdSlgflF_ojyxTxWgxO_8Vdj0qBDMNixDj6wlT1',
     headers: {'Content-Type'=>'application/json'},
     cookies: {},
     payload: payload)
