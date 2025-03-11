

#Dataset Overview
This dataset contains statistics on the number of Taiwanese citizens traveling abroad by destination from 2002 to 2024.

#Variables:
首站抵達地 (First Destination) - The region where travelers first arrived (e.g., Asia, Europe).
細分 (Subdivision) - Specific countries or territories (e.g., Japan, Korea, Hong Kong).
2002 - 2024 - Annual travel numbers from 2002 to 2024.
Variable Types:
首站抵達地 (First Destination) - Categorical (String)
細分 (Subdivision) - Categorical (String)
2002 - 2024 (Annual travel numbers) - Currently stored as Strings (likely due to commas in numbers). Should be converted to Numeric (Integer) for analysis.

----------------------------------------------------------------------------------------

## Dataset Overview

This dataset contains statistics on the number of Taiwanese citizens traveling abroad by destination from 2002 to 2024.

| **Variable**            | **Description**                                                                                                                                       | **Variable Type**        |
|-------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------|
| **首站抵達地 (First Destination)**  | The region where travelers first arrived (e.g., Asia, Europe).                                                                                       | Categorical (String)     |
| **細分 (Subdivision)**         | Specific countries or territories (e.g., Japan, Korea, Hong Kong).                                                                                  | Categorical (String)     |
| **2002 - 2024**               | Annual travel numbers from 2002 to 2024. Numbers currently stored as Strings (likely due to commas in numbers). Should be converted to Numeric (Integer) for analysis. | Numeric (Integer)        |

### Notes:
- The **First Destination** and **Subdivision** variables are categorical, which refer to regions and specific countries/territories.
- The travel numbers (2002-2024) are stored as strings, but should be converted to numeric values for proper analysis.
