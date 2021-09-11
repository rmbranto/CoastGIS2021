{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "9142bfaf",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 7 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Names</th><th scope=col>cNames</th><th scope=col>sColors</th><th scope=col>wikidata</th><th scope=col>fImages</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Carcinus maenas     </td><td>European Green Crab</td><td>green     </td><td>Q27779  </td><td>https://upload.wikimedia.org/wikipedia/commons/1/17/Carcinus_maenas.jpg                                                              </td></tr>\n",
       "\t<tr><td>Caulerpa taxifolia  </td><td>Killer Algae       </td><td>cyan      </td><td>Q310961 </td><td>https://upload.wikimedia.org/wikipedia/commons/e/e7/CaulerpaTaxifolia.jpg                                                            </td></tr>\n",
       "\t<tr><td>Codium fragile      </td><td>Dead Mans Fingers  </td><td>magenta   </td><td>Q2712208</td><td>https://upload.wikimedia.org/wikipedia/commons/e/ed/Codiumfragile.jpg                                                                </td></tr>\n",
       "\t<tr><td>Dreissena polymorpha</td><td>Zebra Mussel       </td><td>red       </td><td>Q752130 </td><td>https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Dreissena_polymorpha3.jpg/220px-Dreissena_polymorpha3.jpg                  </td></tr>\n",
       "\t<tr><td>Mnemiopsis leidyi   </td><td>Sea Walnut         </td><td>orange    </td><td>Q133630 </td><td>https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Sea_walnut%2C_Boston_Aquarium.jpg/220px-Sea_walnut%2C_Boston_Aquarium.jpg  </td></tr>\n",
       "\t<tr><td>Pterois volitans    </td><td>Lion Fish          </td><td>yellow    </td><td>Q824672 </td><td>https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Pterois_volitans_Manado-e_edit.jpg/220px-Pterois_volitans_Manado-e_edit.jpg</td></tr>\n",
       "\t<tr><td>Rapana venosa       </td><td>Veined Rapa Whelk  </td><td>dodgerblue</td><td>Q139053 </td><td>https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Rapana_Black_Sea_2008_G1.jpg/220px-Rapana_Black_Sea_2008_G1.jpg            </td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 7 × 5\n",
       "\\begin{tabular}{lllll}\n",
       " Names & cNames & sColors & wikidata & fImages\\\\\n",
       " <chr> & <chr> & <chr> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t Carcinus maenas      & European Green Crab & green      & Q27779   & https://upload.wikimedia.org/wikipedia/commons/1/17/Carcinus\\_maenas.jpg                                                              \\\\\n",
       "\t Caulerpa taxifolia   & Killer Algae        & cyan       & Q310961  & https://upload.wikimedia.org/wikipedia/commons/e/e7/CaulerpaTaxifolia.jpg                                                            \\\\\n",
       "\t Codium fragile       & Dead Mans Fingers   & magenta    & Q2712208 & https://upload.wikimedia.org/wikipedia/commons/e/ed/Codiumfragile.jpg                                                                \\\\\n",
       "\t Dreissena polymorpha & Zebra Mussel        & red        & Q752130  & https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Dreissena\\_polymorpha3.jpg/220px-Dreissena\\_polymorpha3.jpg                  \\\\\n",
       "\t Mnemiopsis leidyi    & Sea Walnut          & orange     & Q133630  & https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Sea\\_walnut\\%2C\\_Boston\\_Aquarium.jpg/220px-Sea\\_walnut\\%2C\\_Boston\\_Aquarium.jpg  \\\\\n",
       "\t Pterois volitans     & Lion Fish           & yellow     & Q824672  & https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Pterois\\_volitans\\_Manado-e\\_edit.jpg/220px-Pterois\\_volitans\\_Manado-e\\_edit.jpg\\\\\n",
       "\t Rapana venosa        & Veined Rapa Whelk   & dodgerblue & Q139053  & https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Rapana\\_Black\\_Sea\\_2008\\_G1.jpg/220px-Rapana\\_Black\\_Sea\\_2008\\_G1.jpg            \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 7 × 5\n",
       "\n",
       "| Names &lt;chr&gt; | cNames &lt;chr&gt; | sColors &lt;chr&gt; | wikidata &lt;chr&gt; | fImages &lt;chr&gt; |\n",
       "|---|---|---|---|---|\n",
       "| Carcinus maenas      | European Green Crab | green      | Q27779   | https://upload.wikimedia.org/wikipedia/commons/1/17/Carcinus_maenas.jpg                                                               |\n",
       "| Caulerpa taxifolia   | Killer Algae        | cyan       | Q310961  | https://upload.wikimedia.org/wikipedia/commons/e/e7/CaulerpaTaxifolia.jpg                                                             |\n",
       "| Codium fragile       | Dead Mans Fingers   | magenta    | Q2712208 | https://upload.wikimedia.org/wikipedia/commons/e/ed/Codiumfragile.jpg                                                                 |\n",
       "| Dreissena polymorpha | Zebra Mussel        | red        | Q752130  | https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Dreissena_polymorpha3.jpg/220px-Dreissena_polymorpha3.jpg                   |\n",
       "| Mnemiopsis leidyi    | Sea Walnut          | orange     | Q133630  | https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Sea_walnut%2C_Boston_Aquarium.jpg/220px-Sea_walnut%2C_Boston_Aquarium.jpg   |\n",
       "| Pterois volitans     | Lion Fish           | yellow     | Q824672  | https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Pterois_volitans_Manado-e_edit.jpg/220px-Pterois_volitans_Manado-e_edit.jpg |\n",
       "| Rapana venosa        | Veined Rapa Whelk   | dodgerblue | Q139053  | https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Rapana_Black_Sea_2008_G1.jpg/220px-Rapana_Black_Sea_2008_G1.jpg             |\n",
       "\n"
      ],
      "text/plain": [
       "  Names                cNames              sColors    wikidata\n",
       "1 Carcinus maenas      European Green Crab green      Q27779  \n",
       "2 Caulerpa taxifolia   Killer Algae        cyan       Q310961 \n",
       "3 Codium fragile       Dead Mans Fingers   magenta    Q2712208\n",
       "4 Dreissena polymorpha Zebra Mussel        red        Q752130 \n",
       "5 Mnemiopsis leidyi    Sea Walnut          orange     Q133630 \n",
       "6 Pterois volitans     Lion Fish           yellow     Q824672 \n",
       "7 Rapana venosa        Veined Rapa Whelk   dodgerblue Q139053 \n",
       "  fImages                                                                                                                              \n",
       "1 https://upload.wikimedia.org/wikipedia/commons/1/17/Carcinus_maenas.jpg                                                              \n",
       "2 https://upload.wikimedia.org/wikipedia/commons/e/e7/CaulerpaTaxifolia.jpg                                                            \n",
       "3 https://upload.wikimedia.org/wikipedia/commons/e/ed/Codiumfragile.jpg                                                                \n",
       "4 https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Dreissena_polymorpha3.jpg/220px-Dreissena_polymorpha3.jpg                  \n",
       "5 https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Sea_walnut%2C_Boston_Aquarium.jpg/220px-Sea_walnut%2C_Boston_Aquarium.jpg  \n",
       "6 https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Pterois_volitans_Manado-e_edit.jpg/220px-Pterois_volitans_Manado-e_edit.jpg\n",
       "7 https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Rapana_Black_Sea_2008_G1.jpg/220px-Rapana_Black_Sea_2008_G1.jpg            "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "make_species_style<-function(){\n",
    "qNames<-c('Carcinus maenas','Caulerpa taxifolia','Codium fragile','Dreissena polymorpha','Mnemiopsis leidyi','Pterois volitans','Rapana venosa')\n",
    "cNames<-c('European Green Crab','Killer Algae','Dead Mans Fingers','Zebra Mussel','Sea Walnut','Lion Fish','Veined Rapa Whelk') # invasive\n",
    "wikidata<-c('Q27779','Q310961','Q2712208','Q752130','Q133630','Q824672','Q139053')\n",
    "sColors<-c('green','cyan','magenta','red','orange','yellow','dodgerblue')\n",
    "fImages<-c('https://upload.wikimedia.org/wikipedia/commons/1/17/Carcinus_maenas.jpg',\n",
    "           'https://upload.wikimedia.org/wikipedia/commons/e/e7/CaulerpaTaxifolia.jpg',\n",
    "           'https://upload.wikimedia.org/wikipedia/commons/e/ed/Codiumfragile.jpg',\n",
    "           'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Dreissena_polymorpha3.jpg/220px-Dreissena_polymorpha3.jpg',\n",
    "           'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Sea_walnut%2C_Boston_Aquarium.jpg/220px-Sea_walnut%2C_Boston_Aquarium.jpg',\n",
    "           'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Pterois_volitans_Manado-e_edit.jpg/220px-Pterois_volitans_Manado-e_edit.jpg',\n",
    "           'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Rapana_Black_Sea_2008_G1.jpg/220px-Rapana_Black_Sea_2008_G1.jpg')\n",
    "\n",
    "data.frame(Names=qNames,cNames=cNames,sColors=sColors,wikidata=wikidata,fImages=fImages,stringsAsFactors = FALSE)\n",
    "} \n",
    "make_species_style()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "37bab134",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "'make_species_style'"
      ],
      "text/latex": [
       "'make\\_species\\_style'"
      ],
      "text/markdown": [
       "'make_species_style'"
      ],
      "text/plain": [
       "[1] \"make_species_style\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "objects()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "e9ecce46",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "3.6.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
